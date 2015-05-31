class ConfirmationsController < Devise::ConfirmationsController

  def show
    @original_token = params[:confirmation_token]
    digested_token = Devise.token_generator.digest(self, :confirmation_token, params[:confirmation_token])
    self.resource = resource_class.find_by_confirmation_token(digested_token) if
        params[:confirmation_token].present?

    super if resource.nil? or resource.confirmed?
  end

  def confirm
    digested_token = Devise.token_generator.digest(self, :confirmation_token, params[resource_name][:confirmation_token])
    self.resource = resource_class.find_by_confirmation_token(digested_token) if
        params[resource_name][:confirmation_token].present?

    if resource.update_attributes(params[resource_name].except(:confirmation_token).permit(:email, :password, :password_confirmation)) && resource.password_match?
      self.resource = resource_class.confirm_by_token(params[resource_name][:confirmation_token])
      set_flash_message :notice, :confirmed
      sign_in_and_redirect(resource_name, resource)
    else
      render action: 'show'
    end
  end
end
