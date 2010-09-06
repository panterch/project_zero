module ApplicationHelper
  def flash_box(*types)
    content = ""
    types.each do |type|
      content += content_tag(:div, flash[type], :id => type)
    end
    content
  end

end
