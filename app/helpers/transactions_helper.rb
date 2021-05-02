module TransactionsHelper
  def group_image(group, hide)
    return if hide

    if group&.group_icon&.attached?
      image_tag(group.group_icon, class: 'img-thumbnail', alt: 'Group Icon')
    else
      image_tag('default.jpeg', class: 'img-thumbnail', alt: 'Group icon default')
    end
  end
end
