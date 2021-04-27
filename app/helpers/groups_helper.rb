module GroupsHelper
  def load_image(group)
    if group.group_icon.attached?
      image_tag(group.group_icon, class: 'card-img-top', alt: 'Group image')
    else
      image_tag('default.jpeg', class: 'card-img-top', alt: 'Group image' )
    end
  end
end
