class InfoEquipmentsController < ApplicationController
  def show
    @equipment = InfoEquipment.find(params[:id])
    @marker = { lat: @equipment.lat, lng: @equipment.lng }
    render :show
  end
end
