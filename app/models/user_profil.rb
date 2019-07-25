class UserProfil < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, PhotoUploader
end
