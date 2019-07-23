class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  # validates :age, presence: true
  # validates :size, presence: true
  # validates :sport_frequencies, presence: true
  # validates :sport_interests, presence: true
  # validates :informations_confirmation, acceptance: { message: 'ce champ est requis'}
  # validates :home_address, presence: true
  # validates :work_address, presence: true
  # validates :gender, presence: true, inclusion: { in: ['female', 'male'] }
  # validates :first_name, presence: true
  # validates :last_name, presence: true
end
