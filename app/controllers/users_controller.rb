class UsersController < ApplicationController
  def index
    @user = current_user
    @user_profil = UserProfil.new

    render layout: "session"
  end

  def show
    @user = current_user
  end
end
