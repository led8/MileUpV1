class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.provider = auth.provider
      user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
    end
  end

  def apply_omniauth(auth)
    update_attributes(
      provider: auth.provider,
      uid: auth.uid
    )
  end

  def has_facebook_linked?
    self.provider.present? && self.uid.present?
  end

end
