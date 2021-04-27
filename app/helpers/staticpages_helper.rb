module StaticpagesHelper
  def display_links
    links = []
    if user_signed_in?
      links << link_to('All Transactions', transactions_path)
      links << link_to('External Transactions', transactions_path)
      links << link_to('All Groups', groups_path)
      links << link_to('Logout', destroy_user_session_path, redirect_to: root_path, method: :delete)
    else
      links << link_to('Login', new_user_session_path)
      links <<link_to('SignUp', new_user_registration_path)
    end
    links
  end
end
