module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/svg/#{name}.svg"
    if File.exists?(file_path)
      File.read(file_path).html_safe
    else
      '(not found)'
    end
  end
end
