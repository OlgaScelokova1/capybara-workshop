Given(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.isVisible
end


Then(/^I open SignUp page/) do
  @pages.page_home.openSignUp
  @pages.sign_up_page.isVisible
end


And("I enter {string}, {string}, {string} in SignUp form") do |email, password, project|
 @pages.sign_up_page.enterEmail(email)
 @pages.sign_up_page.enterPassword1(password)
 @pages.sign_up_page.enterPassword2(password)
 @pages.sign_up_page.enterProject(project)
end

And(/^I close SignUp view/) do
  @pages.sign_up_page.closeSignUpForm
  @pages.page_home.isVisible
end

When(/^I open login page/) do
  @pages.page_home.openLogin
  @pages.login_page.isVisible
end


And("I enter invalid {string} and {string} in Login form") do |email, password|
  @pages.login_page.enterEmail(email)
  @pages.login_page.enterPassword(password)
end

And(/^I try to login/) do
  @pages.login_page.login
end

Then(/^error message is visible/) do
  @pages.login_page.login_error_message
end
