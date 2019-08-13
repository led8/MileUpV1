class InfoEquipment < ApplicationRecord
  # SEO for Friendly's URL
  extend FriendlyId
  friendly_id :name, use: :slugged

  # PgSearch
  include PgSearch
  pg_search_scope :search_by_activity, against: [ :activity ], using: { tsearch: { prefix: true } }
end
