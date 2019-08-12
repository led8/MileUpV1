class InfoEquipmentsController < ApplicationController
  def show
    @equipment = InfoEquipment.friendly.find(params[:id])
    @marker = { lat: @equipment.lat, lng: @equipment.lng }
    render :show
  end
end
