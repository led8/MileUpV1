module InfoEquipmentHelper
  def sanitize_activity(activity)
    result = activity.split('/')
    return result
  end
end
