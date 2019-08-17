module InfoEquipmentHelper
  def sanitize_activity(activity)
    result = activity.gsub('(', '/').gsub(')', '/').split('/')
    return result
  end
end
