class UserProfil < ApplicationRecord
  belongs_to :user

  before_save :convert_to_integer

  mount_uploader :avatar, PhotoUploader

  def convert_to_integer
    puts "***** CONVERT AGE TO INTEGER METHOD *****"
    if self.age
      self.age.to_i
    end

    if self.sport_frequencies === "..."
      self.sport_frequencies = nil
    end

    if self.sport_interests === "..."
      self.sport_interests = nil
    end
    puts "***** CONVERSION WITH SUCCESS *****"
  end
end
