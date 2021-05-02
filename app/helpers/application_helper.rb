module ApplicationHelper
  def display_profile
    return unless current_user

    image_tag('profile.jpeg', class: 'img-fluid')
    content_tag(current_user.username)
  end
end
