class RolesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /roles
  def index
    @roles = Role.all
  end

  # GET /roles/1
  def show
    if @role.users.empty?
      @associated_users = "None"
    else
      @associated_users = @role.users.map(&:name).join(", ")
    end
  end

  # GET /roles/new
  def new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  def create
    if @role.save
      redirect_to @role, notice: "Role was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roles/1
  def update
    if @role.update(role_params)
      redirect_to @role, notice: "Role was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /roles/1
  def destroy
    @role.destroy!
    redirect_to roles_path, notice: "Role was successfully destroyed.", status: :see_other
  end

  private
    # Only allow a list of trusted parameters through.
    def role_params
      params.expect(role: [ :name, :description ])
    end
end
