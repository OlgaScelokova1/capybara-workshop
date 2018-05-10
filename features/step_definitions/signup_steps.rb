When(/^I am on Appimation home page/) do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

Then("I open SignUp page") do
  find(:css, '#signup-b').click
end

And("I see that SignUp page is visible") do
  unless find(:css, '#signup > h1').visible?
    raise "header not visible"
  end
end

And("I enter all required information") do
 email= "automation@gmail.com"
 password= "Parole123"
 project= "Automation"

 email_field = find(:css, "form[action='/user'] input[type='email']")
 password1_field = find(:css, "form[action='/user'] input[name='password1']")
 password2_field = find(:css, "form[action='/user'] input[name='password2']")
 project_field = find(:css, "form[action='/user'] input[name='project_name']")


 unless email_field.visible?
   raise "email field not visible"
 end
 email_field.send_keys(email)

 unless password1_field.visible?
   raise "password field not visible"
 end
 password1_field.send_keys(password)

 unless password2_field.visible?
   raise "repeat password field not visible"
 end
 password2_field.send_keys(password)

 unless project_field.visible?
   raise "project name field not visible"
 end
 project_field.send_keys(project)

end

And("I close SignUp view") do
  find(:css, '#signup .closecross').click
end

Then("SignUp view is not visible") do
  unless find(:css, '#start_button').visible?
    raise "try now button not visible"
  end
end

When("I open login page") do
  unless find(:css, '#login-b').visible?
    raise "login button not visible"
  end
  find(:css, '#login-b').click
end

And("login page is visible") do
  unless find(:css, '#login > h1').visible?
    raise "header not visible"
  end
end

And("I enter invalid {string} and {string}") do |email, password|
  unless find(:css, "form[action='/login'] input[type='email']")
    raise "email field not visible"
  end
  find(:css, "form[action='/login'] input[type='email']").send_keys(email)

  unless find(:css, "form[action='/login'] input[type='password']")
    raise "password not visible"
  end
  find(:css, "form[action='/login'] input[type='password']").send_keys(password)
end


When("I try to login") do
  find(:css, "form[action='/login'] .innerButton").click
end
