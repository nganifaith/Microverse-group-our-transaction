module TransactionsHelper
  def group_image(transaction, hide)
    return if hide

    if transaction.group&.group_icon&.attached?
      image_tag(transaction.group.group_icon, class: 'img-thumbnail', alt: 'Group Icon')
    else
      image_tag('default.jpeg', class: 'img-thumbnail', alt: 'Group icon')
    end
  end
end
