class InfoEquipment < ApplicationRecord
  # Association
  # belongs_to :city_equipment, inverse_of: :info_equipments

  # SEO for Friendly's URL
  extend FriendlyId
  friendly_id :name, use: :slugged

  # PgSearch
  include PgSearch
  pg_search_scope :search_by_activity_and_city, against: [ :activity, :city ], using: { tsearch: { prefix: true } }

  # before_save :anti_spam

  # def anti_spam
  #   doc = Nokogiri::HTML::DocumentFragment.parse(self.content)
  #   doc.css('a').each do |a|
  #     a[:rel] = 'nofollow'
  #     a[:target] = '_blank'
  #   end
  #   self.content = doc.to_s
  # end
end
