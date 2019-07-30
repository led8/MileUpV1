class InfoEquipment < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_activity, against: [ :activity ], using: { tsearch: { prefix: true } }
end
