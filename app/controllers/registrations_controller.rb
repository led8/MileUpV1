class RegistrationsController < Devise::RegistrationsController

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  protected

  def after_sign_up_path_for(resource)
    users_path
  end
end
