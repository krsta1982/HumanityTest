Feature: Humanity platform testing
  Add a new employee

  Background:
    Given I am on a login page
    When I enter correct username "aleksandarkrstekanic@gmail.com" in the Username field
    When I enter correct password "humanity2019" in the Password field
    When I press Log in button
    Then I can log in
    When I click on the staff field
    And I click on a Add Employees button

    Scenario: Try to add an employee with all empty fields
      And I click on a Save Employees button
      Then I cannot add an employee and error message is displayed: "Add at least one employee"

    Scenario: Try to add an employee with first name only
      And I enter "Petar" in the first name field
      And I click on a Save Employees button
      Then I can add an employee and status message is displayed: "1 employee saved!"

    Scenario: Try to add an employee with last name only
      And I enter "Petrovic" in the last name field
      And I click on a Save Employees button
      Then I cannot add an employee and error message is displayed: "First Name cannot be left empty"

    Scenario: Try to add an employee with email address only
      And I enter "petarpetrovic@test.com" in the email field
      And I click on a Save Employees button
      Then I cannot add an employee and error message is displayed: "First Name cannot be left empty"

    Scenario: Try to add an employee with first name and last name
      And I enter "Petar" in the first name field
      And I enter "Petrovic" in the last name field
      And I click on a Save Employees button
      Then I can add an employee and status message is displayed: "1 employee saved!"

    Scenario: Try to add an employee with first name and email
      And I enter "Bosko" in the first name field
      And I enter "boskoboskovic@test.com" in the email field
      And I click on a Save Employees button
      Then I can add an employee and status message is displayed: "1 employee saved!"

    Scenario: Try to add an employee with last name and email
      And I enter "Filipovic" in the last name field
      And I enter "filipfilipovic@test.com" in the email field
      And I click on a Save Employees button
      Then I cannot add an employee and error message is displayed: "First Name cannot be left empty"

    Scenario: Try to add an employee with first name, last name and email
      And I enter "Petar" in the first name field
      And I enter "Petrovic" in the last name field
      And I enter "petarpetrovic@test.com" in the email field
      And I click on a Save Employees button
      Then I can add an employee and status message is displayed: "1 employee saved!"

     Scenario: Try to add two employees with same first names, last names and emails
       And I enter "Mirko" in the first name field
       And I enter "Mirkovic" in the last name field
       And I enter "mirkomirkovic@test.com" in the email field
       And I enter "Mirko" in the second first name field
       And I enter "Mirkovic" in the second last name field
       And I enter "mirkomirkovic@test.com" in the second email field
       And I click on a Save Employees button
       Then I can add an employee and status message is displayed: "1 employee saved!! But some emails already taken !"

      Scenario: Try to add two employees with different first names, last names and  same emails
        And I enter "Jovan" in the first name field
        And I enter "Jovanovic" in the last name field
        And I enter "jovanjovanovic@test.com" in the email field
        And I enter "Ivan" in the second first name field
        And I enter "Ivanovic" in the second last name field
        And I enter "jovanjovanovic@test.com" in the second email field
        And I click on a Save Employees button
        Then I can add an employee and status message is displayed: "1 employee saved!! But some emails already taken !"

     Scenario: Try to add an employee with first name, last name and incorrect email format
       And I enter "Petar" in the first name field
       And I enter "Petrovic" in the last name field
       And I enter "petarpetrovic@test." in the email field
       And I click on a Save Employees button
       Then I cannot add an employee and error message is displayed: "Invalid Email"

     Scenario: Try to add two employees with different first names, last names and emails
       And I enter "Marko", "Markovic" and "markomarkovic@test.com" for first employee
       And I enter "Kosta", "Kostic" and "kostakostic@test.com" for second employee
       And I click on a Save Employees button
       Then I can add an employee and status message is displayed: "2 employees saved!"






