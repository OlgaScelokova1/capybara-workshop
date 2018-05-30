class SignUpPage < BasePage
    attr_accessor :button_start
  def initialize
    @form_sign_up = Element.new(:css, '#signup')
    @form_sign_up_header = Element.new(:css, '#signup > h1')
    @email_field = Element.new(:css, "form[action='/user'] input[type='email']")
    @password1_field = Element.new(:css, "form[action='/user'] input[name='password1']")
    @password2_field = Element.new(:css, "form[action='/user'] input[name='password2']")
    @project_field = Element.new(:css, "form[action='/user'] input[name='project_name']")
    @close_cross= Element.new(:css, '#signup .closecross')
  end

  def isVisible
    @form_sign_up.isVisible
    @form_sign_up_header.isVisible
  end

  def enterEmail(email)
    @email_field.send_keys(email)
  end

  def enterPassword1(password)
    @password1_field.send_keys(password)
  end

  def enterPassword2(password)
    @password2_field.send_keys(password)
  end

  def enterProject(project)
    @project_field.send_keys(project)
  end

  def closeSignUpForm
    @close_cross.click
  end

end
