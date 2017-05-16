# encoding: utf-8

Feature: Verify text in Inmetrics' site
  As a developer
  I want to verify if some text exists in Inmetrics' site
  In order to prove that I now the basics of Cucumber

  Scenario: Check text
    Given I am on Inmetrics page
     When I access the about page
     Then I should see "MAIS DE 15 ANOS DE ATUAÇÃO"
