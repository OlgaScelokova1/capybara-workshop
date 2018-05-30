require 'date'
module Users
  def Users.contact_form_user
    @contact_form_user ||= User.new(args = {name: 'Namename'})
    @contact_form_user
  end

  def Users.contact_form_invalid_user
    @contact_form_invalid_user ||= User.new(args = {email: 'name@name'})
    @contact_form_invalid_user
  end

  def Users.sign_up_form_user
    @sign_up_form_user ||= User.new(args = {password: 'password', project: 'project'})
    @sign_up_form_user
  end

  def Users.login_form_user
    @login_form_user ||= User.new(args = {email: 'email_invalid@emailinvalid', password: ':passwordinvalid'})
    @login_form_user
  end

  class User
    attr_reader :name, :email, :message, :project, :password
    def initialize(args = {})
      defaults = {name: DateTime.now.strftime('%Q'), email: DateTime.now.strftime('%Q')+'@test.com', message: DateTime.now}
      args = defaults.merge(args)
      @name = args[:name]
      @email = args[:email]
      @message = args[:message]
      @project = args[:project]
      @password = args[:password]
    end
  end
end
