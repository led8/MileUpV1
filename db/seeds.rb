# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'csv'

## CONTACTS ##

puts "**** START CREATING CONTACT ****"
Contact.destroy_all
filepath = 'contacts.csv'
count = 0
CSV.foreach(filepath) do |row|
  contact = Contact.new(department: "#{row[0]}", city: "#{row[1]}", first_name: "#{row[2]}", last_name: "#{row[3]}",
                        label_level: "#{row[4]}", region: "#{row[5]}", phone_number: "#{row[6]}", email: "#{row[7]}",
                        list_current_year: "#{row[8]}", post: "#{row[9]}")
  contact.save
  count += 1
  puts "#{count} contacts created !"
end
Contact.first.destroy
puts "****** CONTACTS CREATED ! ******"


## CITY EQUIPMENTS ##

puts "**** START CREATING CITY EQUIPMENTS ****"
CityEquipment.destroy_all
filepath = 'city_equipments.csv'
count = 0
CSV.foreach(filepath) do |row|
  city_equipment = CityEquipment.new(com_insee: "#{row[0]}", com_lib: "#{row[1]}", nb_equipments: "#{row[2]}")
  city_equipment.save
  count += 1
  puts "#{count} cities created !"
end
CityEquipment.first.destroy
puts "****** CITY EQUIPMENTS CREATED ! *******"


## INFO EQUIPMENTS ##

puts "**** START CREATING INFO EQUIPMENTS ****"
InfoEquipment.destroy_all
filepath = 'info_equipments.csv'
count = 0
CSV.foreach(filepath) do |row|
  info_equipment = InfoEquipment.new(lat: "#{row[0]}", lng: "#{row[1]}", address: "#{row[4]} #{row[3]}, #{row[24].to_i} #{row[17]}",
                                      creation_date: "#{row[6]}", equipment_type: "#{row[12]}", activity: "#{row[13]}",
                                      nb_equipments: "#{row[16].to_i}", level: "#{row[18]}", environment: "#{row[22]}",
                                      name: "#{row[23]}", city: "#{row[17]}", rating: (1..5).to_a.sample)
  info_equipment.save
  count += 1
  puts "#{count} equipments created !"
end
InfoEquipment.first.destroy
puts "****** INFO EQUIPMENTS CREATED ! *******"
