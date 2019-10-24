Feature: Humanity platform testing

    Time Clock - Clock in/out

  Scenario: Try to click on Clock in and Clock out button
    Given I am on a login page
    When I enter correct username "aleksandarkrstekanic@gmail.com" in the Username field
    When I enter correct password "humanity2019" in the Password field
    When I press Log in button
    Then I can log in
    When I click on Time Clock field
    When I click on Clock in button
    Then I should see "Clocked in." message
    When I click on Clock out button
    Then I should see "Clocked out." message

