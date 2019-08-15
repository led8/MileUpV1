class UsersController < ApplicationController
  def index
      @user = current_user
      @user_profil = UserProfil.new

    if @user.user_profil.nil?
      render layout: "session"
    else
      render :show
    end
  end

  def show
    @user = current_user
  end
end
