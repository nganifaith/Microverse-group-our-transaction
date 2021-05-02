module ApplicationHelper
  def display_profile
    return unless user_signed_in?

    image_tag('profile.jpeg', class: 'img-fluid') +
      content_tag(:div, current_user.username)
  end
end
