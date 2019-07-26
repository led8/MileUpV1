class UserProfilsController < ApplicationController
  def new
    @user = current_user
    @user_profil = UserProfil.new
    @collection = ["Je ne sais pas", "Jamais", "1 à 2 fois par semaine", "3 à 4 fois par semaine", "5 fois par semaine ou plus"]
  end

  def create
    @user = current_user
    @user_profil = UserProfil.new(user_profil_params)
    @user_profil.user = @user

    respond_to do |format|
      if @user_profil.save
        format.html { redirect_to @user, notice: 'User profil was successfully created.' }
        format.js
      else
        format.html { redirect_to @user, notice: 'Nothing created' }
        format.js
      end
    end
  end

  private

  def user_profil_params
    params.require(:review).permit(:gender, :age, :size, :weight, :sport_frequencies, :sport_interests, :home_address, :work_address, :confirmation_informations, :avatar)
  end
end
