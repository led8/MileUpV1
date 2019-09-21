class CitiesController < ApplicationController
  before_action :authenticate_city!
  before_action :authorize_current_city!

  def show
    @city = current_city
  end

  private

  def authorize_current_city!
    if current_city.id != params[:id].to_i
      redirect_to root_path, notice: 'Sorry you are not abled to access'
    end
  end
end
