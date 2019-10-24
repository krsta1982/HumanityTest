**Testing framework for Humanity web application**

Project is created in ruby with cucumber by using RubyMine IDE on Ubuntu 18.04.

In this repository you can find three projects: login, add_employee and time_clock, with Test Scenarios.doc file. 

All projects are created by testgen so their framework includes all necessary files and folders
for running cucumber test scenarios.

First project login will test attempt to login without credentials, by entering only username or password, attempt to login with incorrect username and password and finally, successful login with correct credentials.

In the second project add_employee we will try to add employees
by entering valid data for only first name, last name or email,
then we will try different combinations of those three fields, try to enter incorrect email format, to add two employees with the same data
and two different employees with all different data.

In the third projet time_clock, we can test Time Shift module by clicking Clock in for starting time shift and Clock out for ending it.

Initial setup:

1. Install ruby v2.6.3p62
2. Install gems through terminal
   gem install rake bundler watir
3. Install Google Chrome v78
4. Install ChromeDriver
5. Install RubyMine IDE or equivalent
6. Install gem testgen
   gem install testgen
7. To generate the project use: 
   testgen project project_name
   This will create an entire project structure
8. Run bundle install to install all required gems for a project
9. Create feature files in the features directory for writing cucumber scenarios by using Gherkin syntax
10. Create steps ruby file in features/step_definitions directory
11. To run the test, type in the terminal, in the project directory
    cucumber features/project_name.feature
12. Browser should be visible(headfull) so you can see execution of the steps and results should be logged in the terminal 
 
   