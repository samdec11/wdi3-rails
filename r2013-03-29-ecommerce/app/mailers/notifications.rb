class Notifications < ActionMailer::Base
  def login_message(user)
    @user = user
    mail :to => user.email, :from => 'samdec11@gmail.com', :subject => 'I just noticed that you logged in...'
  end
end