class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # new_user_user_profil_path(current_user)
    users_path
  end
end