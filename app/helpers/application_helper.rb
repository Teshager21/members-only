module ApplicationHelper
  def registration_and_session_links
    if signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete,
                                                   data: { confimation: 'are you sure?' }, class: 'nav-item'
    else
      link_to 'Signup', new_user_registration_path, class: 'nav-item nav-link'

    end
  end

  def signed_in_link
    link_to 'Login', new_user_session_path, class: 'nav-item nav-link' unless signed_in?
  end

  def error_flashes
    if flash[:success]
      content_tag(:p, '<%= notice %>', class: 'alert alert-success')
    elsif flash[:alert]
      content_tag(:p, '<%= alert %>', class: 'alert alert-danger')
    end
  end
end
