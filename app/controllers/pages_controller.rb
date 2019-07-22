require 'csv'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    @equipments = InfoEquipment.where.not(lat: nil, lng: nil).first(10)
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.lat,
        lng: equipment.lng
      }
    end
    render :home
  end

  ## CSV METHOD TO GENERATE MODEL ##

  def create_contact_models_from_csv
    puts "**** CONTACT CSV METHOD ****"
    Contact.destroy_all
    filepath = 'contacts.csv'
    CSV.foreach(filepath) do |row|
      contact = Contact.new(department: "#{row[0]}",
                            city: "#{row[1]}",
                            first_name: "#{row[2]}",
                            last_name: "#{row[3]}",
                            label_level: "#{row[4]}",
                            region: "#{row[5]}",
                            phone_number: "#{row[6]}",
                            email: "#{row[7]}",
                            list_current_year: "#{row[8]}",
                            post: "#{row[9]}"
                          )
      contact.save
    end
    Contact.first.destroy
    puts "********************"
    render :create_contact_models_from_csv
  end

  def create_city_equipments_models_from_csv
    puts "**** CITY EQUIPMENTS CSV METHOD ****"
    CityEquipment.destroy_all
    filepath = 'city_equipments.csv'
    CSV.foreach(filepath) do |row|
      city_equipment = CityEquipment.new(com_insee: "#{row[0]}",
                            com_lib: "#{row[1]}",
                            nb_equipments: "#{row[2]}",
                          )
      city_equipment.save
    end
    CityEquipment.first.destroy
    puts "********************"
    render :create_city_equipments_models_from_csv
  end

  def create_info_equipments_models_from_csv
    puts "**** IFO EQUIPMENTS CSV METHOD ****"
    InfoEquipment.destroy_all
    filepath = 'info_equipments.csv'
    CSV.foreach(filepath) do |row|
      puts "#{row[2]}"
      info_equipment = InfoEquipment.new(lat: "#{row[0]}",
                            lng: "#{row[1]}",
                            activity: "#{row[13]}",
                            creation_date: "#{row[6]}"
                          )
      info_equipment.save
    end
    InfoEquipment.first.destroy
    puts "********************"
    render :create_info_equipments_models_from_csv
  end
end
