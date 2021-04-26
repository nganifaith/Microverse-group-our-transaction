module TransactionsHelper
  def group_image(transaction)
    if transaction.group
      image_tag(transaction.group.icon, size: "100x100", alt: "Edit Entry")
    else
      image_tag('https://www.google.com/imgres?imgurl=https%3A%2F%2Fimage.flaticon.com%2Ficons%2Fpng%2F512%2F32%2F32441.png&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-icon%2Fusers-group_735648.htm&tbnid=74rRwNn4iN1ubM&vet=12ahUKEwiM9byEsZrwAhVSwoUKHawhB0gQMygAegUIARDiAQ..i&docid=lcNoYQEfIHXdyM&w=512&h=512&q=group%20icons&ved=2ahUKEwiM9byEsZrwAhVSwoUKHawhB0gQMygAegUIARDiAQ', size: "16x10", alt: "Edit Entry" )
    end
  end
end
