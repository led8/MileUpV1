class UserProfil < ApplicationRecord
  belongs_to :user

  before_save :convert_to_integer

  mount_uploader :avatar, PhotoUploader

  def convert_to_integer
    puts "***** CONVERT AGE TO INTEGER METHOD *****"
    if age
      age.to_i
    end
    puts "***** CONVERSION WITH SUCCESS *****"
  end
end
