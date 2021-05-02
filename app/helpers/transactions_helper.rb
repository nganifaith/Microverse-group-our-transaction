module TransactionsHelper
  def group_image(transaction, hide)
    if !hide && transaction.group&.group_icon&.attached?
      image_tag(transaction.group.group_icon, alt: 'Group Icon')
    else
      image_tag('default.jpeg', alt: 'Group icon default')
    end
  end

  def title(only_external)
    only_external ? 'External Transactions' : 'All Transactions'
  end
end
