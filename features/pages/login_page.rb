class LoginPage < BasePage
    attr_accessor :button_start
  def initialize
    @form_login = Element.new(:css, '#login')
    @form_login_header = Element.new(:css, '#login > h1')
    @email_field = Element.new(:css, "form[action='/login'] input[type='email']")
    @password_field = Element.new(:css, "form[action='/login'] input[type='password']")
    @login_form_button = Element.new(:css, "form[action='/login'] .innerButton")
    @login_error_message = Element.new(:xpath, "//span[contains(text(), 'Username or password is not correct')]")
  end

  def isVisible
    @form_login.isVisible
    @form_login_header.isVisible
  end

  def enterEmail(email)
    @email_field.send_keys(email)
  end

  def enterPassword(password)
    @password_field.send_keys(password)
  end

  def login
    @login_form_button.isVisible
    @login_form_button.click
  end

  def login_error_message
    @login_error_message.isVisible
  end

end
