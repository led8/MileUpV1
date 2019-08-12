class InfoEquipment < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  include PgSearch
  pg_search_scope :search_by_activity, against: [ :activity ], using: { tsearch: { prefix: true } }
end
