# encoding: utf-8

Feature: Verify text in Inmetrics' site
  As a developer
  I want to verify if some text exists in Orange' site
  In order to prove that I now the basics of Cucumber

  Background:
    Given I am on OrangeHRM page

  @orangehrm @orangehrm_add_case
  Scenario: Login and Add Disciplinary Case
    Given I perform a login as Peter
     When I access disciplinary section
      And I add a new disciplinary case
     Then I should see the new disciplinary case

  @orangehrm @orangehrm_wrong_login
  Scenario: Wrong login
    When I try to login with wrong username
    Then I should see the Retry Login Page
