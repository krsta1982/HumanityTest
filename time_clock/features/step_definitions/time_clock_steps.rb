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

When "I click on Time Clock field" do
  @browser.element(id: "sn_timeclock").wait_until(&:present?)
  @browser.element(id: "sn_timeclock").click
end

When "I click on Clock in button" do
  @browser.element(id: "tc_tl_ci").wait_until(&:present?)
  @browser.element(id: "tc_tl_ci").click
end

Then "I should see {string} message" do |expected|
  @browser.element(id: "_status").wait_until(&:present?)
  expect(@browser.text).to include expected
end

When "I click on Clock out button" do
  @browser.element(id: "tc_tl_co").wait_until(&:present?)
  @browser.element(id: "tc_tl_co").click
  sleep 5
end


