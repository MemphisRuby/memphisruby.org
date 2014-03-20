module TagHelpers
  def tag_links(tags)
    tags.map do |tag|
      link_to tag, tag_path(tag)
    end.join(', ')
  end
end
