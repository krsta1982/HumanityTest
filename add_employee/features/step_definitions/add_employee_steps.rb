Given "I am on a login page" do
  @browser.goto 'http://www.humanity.com/app'
end

When "I enter correct username {string} in the Username field" do |username|
  @browser.element(id: "email").wait_until(&:present?)
  @browser.text_field(id: "email").set(username)
end

When "I enter correct password {string} in the Password field" do |password|
  @browser.element(id: "password").wait_until(&:present?)
  @browser.text_field(id: "password").set(password)
end

When "I press Log in button" do
  @browser.element(name: "login").wait_until(&:present?)
  @browser.button(name: "login").click
end

Then "I can log in" do
  @browser.element(id: "sn_dashboard").wait_until(&:present?)
  puts(@browser.element(id: "sn_dashboard").present?)
end

When "I click on the staff field" do
  @browser.element(id: "sn_staff").wait_until(&:present?)
  @browser.element(id: "sn_staff").click
end

And "I click on a Add Employees button" do
  @browser.element(id: "act_primary").wait_until(&:present?)
  @browser.element(id: "act_primary").click
end

And "I click on a Save Employees button" do
  @browser.element(id: "_as_save_multiple").wait_until(&:present?)
  @browser.element(id: "_as_save_multiple").click
end

Then "I cannot add an employee and error message is displayed: {string}" do |expected|
  @browser.element(id: "_status").wait_until(&:present?)
  expect(@browser.text).to include expected
end

And "I enter {string} in the first name field" do |firstname|
  @browser.element(id: "_asf1").wait_until(&:present?)
  @browser.element(id: "_asf1").send_keys(firstname)
end

Then "I can add an employee and status message is displayed: {string}" do |expected|
  @browser.element(id: "_status").wait_until(&:present?)
  expect(@browser.text).to include expected
end

And "I enter {string} in the last name field" do |lastname|
  @browser.element(id: "_asl1").wait_until(&:present?)
  @browser.element(id: "_asl1").send_keys(lastname)
end

And "I enter {string} in the email field" do |email|
  @browser.element(id: "_ase1").wait_until(&:present?)
  @browser.element(id: "_ase1").send_keys(email)
end

And "I enter {string} in the second first name field" do |firstname|
  @browser.element(id: "_asf2").wait_until(&:present?)
  @browser.element(id: "_asf2").send_keys(firstname)
end

And "I enter {string} in the second last name field" do |lastname|
  @browser.element(id: "_asl2").wait_until(&:present?)
  @browser.element(id: "_asl2").send_keys(lastname)
end

And "I enter {string} in the second email field" do |email|
  @browser.element(id: "_ase2").wait_until(&:present?)
  @browser.element(id: "_ase2").send_keys(email)
end


And "I enter {string}, {string} and {string} for first employee" do |firstname, lastname, email|
  @browser.element(id: "_asf1").wait_until(&:present?)
  @browser.element(id: "_asf1").send_keys(firstname)
  @browser.element(id: "_asl1").send_keys(lastname)
  @browser.element(id: "_ase1").send_keys(email)
end

And "I enter {string}, {string} and {string} for second employee" do |firstname, lastname, email|
  @browser.element(id: "_asf2").wait_until(&:present?)
  @browser.element(id: "_asf2").send_keys(firstname)
  @browser.element(id: "_asl2").send_keys(lastname)
  @browser.element(id: "_ase2").send_keys(email)
end