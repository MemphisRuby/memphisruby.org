module MetaHelpers
  def default_title
    "Memphis Ruby Users Group"
  end

  def default_description
    "Memphis Ruby is a technology user group in the greater Memphis, TN area "\
    "focused on the Ruby programming language."
  end

  def page_title
    title = current_resource.data.title
    if title
      if title.length < 50
        "#{title} | #{default_title}"
      else
        title
      end
    else
      default_title
    end
  end

  def page_description
    if description = current_resource.data.description
      if description.length < 40
        "#{description} | #{default_description}"
      else
        description
      end
    else
      if (title = current_resource.data.title) && title.length < 40
        "#{title} | #{default_description}"
      else
        default_description
      end
    end
  end

end
