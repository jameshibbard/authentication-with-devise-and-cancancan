class ItemsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /items
  def index
    @items = Item.all
  end

  # GET /items/1
  def show
  end

  # GET /items/new
  def new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item.user = current_user

    if @item.save
      redirect_to @item, notice: "Item was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to @item, notice: "Item was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy!
    redirect_to items_path, notice: "Item was successfully destroyed.", status: :see_other
  end

  private
    # Only allow a list of trusted parameters through.
    def item_params
      params.expect(item: [ :name, :description, :price, :user_id ])
    end
end
