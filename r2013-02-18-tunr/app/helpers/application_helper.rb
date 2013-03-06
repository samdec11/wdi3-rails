module ApplicationHelper
  def is_admin
    @auth.present? && @auth.is_admin
  end
  def intellinav
    links = ""
    if @auth.present?
      if @auth.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
      else
        links += render :partial => 'layouts/mixtapenav'
        if @auth.albums != []
          links += render :partial => 'layouts/albumnav'
        end
      end
        links += "<li>#{link_to(@auth.name, edit_users_path)}</li>"
        links += "<li>#{link_to(number_to_currency(@auth.balance), edit_users_path)}</li>" if !@auth.is_admin
        links += "<li>#{link_to("Logout", login_path, :method => :delete, :confirm => "Are you sure?")}</li>"
    else
      "<li>#{link_to('Create Account', new_user_path)}</li>" +
      "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end