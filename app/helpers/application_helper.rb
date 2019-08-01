module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/svg/#{name}.svg"
    if File.exists?(file_path)
      File.read(file_path).html_safe
    else
      '(not found)'
    end
  end

  def equipment_environment(equipment)
    result = ""
    if equipment.downcase.include?('intérieur')
      result = "En #{equipment.downcase}"
    elsif equipment.downcase.include?('extérieur')
      result = "En #{equipment.downcase}"
    elsif equipment.downcase.include?('découvert')
      result = "En extérieur"
    end
    return result
  end
end
