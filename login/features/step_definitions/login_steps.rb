Given "I am on a login page" do
  @browser.goto 'http://www.humanity.com/app'
end

When "I press Log in button" do
  @browser.element(name: "login").wait_until(&:present?)
  @browser.button(name: "login").click
end

Then "I cannot log in and I should see error message:{string} Forgot Password." do |expected|
  @browser.element(id: "response-message").wait_until(&:present?)
  expect(@browser.text).to include expected
end

When "I enter correct username {string} in the Username field" do |username|
  @browser.element(id: "email").wait_until(&:present?)
  @browser.text_field(id: "email").set(username)
end

When "I enter correct password {string} in the Password field" do |password|
  @browser.element(id: "password").wait_until(&:present?)
  @browser.text_field(id: "password").set(password)
end

When "I enter incorrect password {string} in the Password field" do |password|
  @browser.element(id: "password").wait_until(&:present?)
  @browser.text_field(id: "password").set(password)
end

When "I enter incorrect username {string} in the Username field" do |username|
  @browser.element(id: "email").wait_until(&:present?)
  @browser.text_field(id: "email").set(username)
end

Then "I cannot log in because CAPTCHA field is displayed" do
  @browser.element(id: "captcha-div").wait_until(&:present?)
  puts(@browser.element(id: "captcha-div").present?)
end

Then "I can log in" do
  @browser.element(id: "sn_dashboard").wait_until(&:present?)
  puts(@browser.element(id: "sn_dashboard").present?)
end
