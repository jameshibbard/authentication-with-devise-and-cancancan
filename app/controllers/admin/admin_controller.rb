class Admin::AdminController < ApplicationController
  layout 'admin'
  before_filter :verify_admin

  def verify_admin
    :authenticate_user!
    redirect_to root_url unless current_user.admin?
  end

  def current_ability
    @current_ability ||= AdminAbility.new(current_user)
  end
end
