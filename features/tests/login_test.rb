class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def validate_sign_up
    @pages.page_home.openSignUp
    @pages.sign_up_page.isVisible
  end

  def fill_in_sign_up_form
    user = Users.sign_up_form_user
    @pages.sign_up_page.enterEmail(user.email)
    @pages.sign_up_page.enterPassword1(user.password)
    @pages.sign_up_page.enterPassword2(user.password)
    @pages.sign_up_page.enterProject(user.project)
  end

  def close_sign_up_form
    @pages.sign_up_page.closeSignUpForm
    @pages.page_home.isVisible
  end

  def open_login
    @pages.page_home.openLogin
    @pages.login_page.isVisible
  end

  def enter_and_submit_invalid_login_data
    user = Users.login_form_user
    @pages.login_page.enterEmail(user.email)
    @pages.login_page.enterPassword(user.password)
    @pages.login_page.login
  end

  def validate_login_error_message
    @pages.login_page.login_error_message
  end

end
