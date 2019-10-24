Feature: Humanity platform testing

  Login as a manager


  Background:
    Given I am on a login page

  Scenario: Try to login with all empty fields
    When I press Log in button
    Then I cannot log in and I should see error message:"Your username/email or password is incorrect. Please try again or click" Forgot Password.

  Scenario: Try to login with correct username only
      When I enter correct username "aleksandarkrstekanic@gmail.com" in the Username field
      When I press Log in button
      Then I cannot log in and I should see error message:"Your username/email or password is incorrect. Please try again or click" Forgot Password.

  Scenario: Try to login with correct password only
    When I enter correct password "humanity2019" in the Password field
    When I press Log in button
    Then I cannot log in and I should see error message:"Your username/email or password is incorrect. Please try again or click" Forgot Password.

  Scenario: Try to login with incorrect username and correct password
    When I enter incorrect username "aleksandarkrstekanic@test.com" in the Username field
    When I enter correct password "humanity2019" in the Password field
    When I press Log in button
    Then I cannot log in and I should see error message:"Your username/email or password is incorrect. Please try again or click" Forgot Password.

  Scenario: Try to login with correct username and incorrect password
    When I enter correct username "aleksandarkrstekanic@gmail.com" in the Username field
    When I enter incorrect password "humanity2018" in the Password field
    When I press Log in button
    Then I cannot log in and I should see error message:"Your username/email or password is incorrect. Please try again or click" Forgot Password.

  Scenario: Try to login with incorrect username and password
    When I enter incorrect username "aleksandarkrstekanic@test.com" in the Username field
    When I enter incorrect password "humanity2018" in the Password field
    When I press Log in button
    Then I cannot log in and I should see error message:"Your username/email or password is incorrect. Please try again or click" Forgot Password.

  Scenario: Try to login with correct username and password
    When I enter correct username "aleksandarkrstekanic@gmail.com" in the Username field
    When I enter correct password "humanity2019" in the Password field
    When I press Log in button
    Then I can log in
