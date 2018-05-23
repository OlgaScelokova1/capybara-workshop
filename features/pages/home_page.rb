class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @button_sign_up = Element.new(:css, '#signup-b')
    @login_button = Element.new(:css, '#login-b')
  end

  def isVisible
    @button_start.isVisible
    @button_sign_up.isVisible
    @login_button.isVisible
  end

  def load
    visit('/legacy')
  end

  def openSignUp
    @button_sign_up.click
  end

  def openLogin
    @login_button.click
  end
end
