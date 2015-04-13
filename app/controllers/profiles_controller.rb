class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
    @user = User.find(current_user.id)
    if @user.role? :admin
      redirect_to admin_users_path, :notice => "Aloah Admin!"
    else
      respond_to do |format|
        format.html # dashboard.html.erb
      end
    end
  end
end
