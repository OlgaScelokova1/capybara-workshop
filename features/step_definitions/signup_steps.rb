Given(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end


Then(/^I open SignUp page/) do
  @tests.login_tests.validate_sign_up
end


And("I fill in SignUp form with all required information") do
  @tests.login_tests.fill_in_sign_up_form
end

And(/^I close SignUp view/) do
  @tests.login_tests.close_sign_up_form
end

When(/^I open login page/) do
  @tests.login_tests.open_login
end


And("I enter invalid login data and try to login") do
  @tests.login_tests.enter_and_submit_invalid_login_data
end

Then(/^error message is visible/) do
  @tests.login_tests.validate_login_error_message
end
