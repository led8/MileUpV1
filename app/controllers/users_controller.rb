class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_current_user!

  def index
      @user = current_user
      @user_profil = UserProfil.new

    if @user.user_profil.nil?
      render layout: "session"
    else
      render "../views/pages/home"
    end
  end

  def show
    @user = current_user
  end

  private

  def authorize_current_user!
    if current_user.id != params[:user_id]
      redirect_to root_path, notice: 'Sorry you are not abled to access'
    end
  end
end
