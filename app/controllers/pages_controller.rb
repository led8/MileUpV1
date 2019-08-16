require 'csv'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def test
    render layout: 'session'
  end

  def home
    @user = current_user
    if params[:query].present?
       @equipments = InfoEquipment.where.not(lat: nil, lng: nil).search_by_activity("#{params[:query]}")
       @markers = @equipments.map do |equipment|
          { lat: equipment.lat, lng: equipment.lng,
            popUp: render_to_string(partial: "./pages/partials/popup_equipment", locals: { equipment: equipment })
          }
      end
    # elsif params[:user_location].present?
    #   @equipments = InfoEquipment.where.not(lat: nil, lng: nil).where("address ILIKE ? ", "#{params[:user_location]}")
    #   @markers = @equipments.map do |equipment|
    #       { lat: equipment.lat, lng: equipment.lng,
    #         popUp: render_to_string(partial: "./pages/partials/popup_equipment", locals: { equipment: equipment })
    #       }
    #   end
    end
    puts params
    render :home
  end

  def filter_with_ajax
    extract_params = params.extract!("utf8", "authenticity_token", "controller", "action")
    @user = current_user

    # @equipments = InfoEquipment.where.not(lat: nil, lng: nil).search_by_activity("#{params["raquette"]}")
    # @markers = @equipments.map do |equipment|
    #     { lat: equipment.lat, lng: equipment.lng,
    #       popUp: render_to_string(partial: "./pages/partials/popup_equipment", locals: { equipment: equipment })
    #     }
    # end
    render partial: "./pages/partials/equipments_list"
  end

  def robots
    respond_to :text
  end
end
