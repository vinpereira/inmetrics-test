Feature: Verify the REST API
  As a developer
  I want to verify the REST API
  In order to show that I know how to use httparty

  @http_api_statuscode @http_api
  Scenario: Get StatusCode from Films API
    Given I perform a GET request to "films" service
     When I get the response and show the films' title
     Then I should see the Status Code 200

  @http_api_count @http_api
  Scenario: Get Count from Planets API
    Given I perform a GET request to "planets" service
     When I save the count response
      And I perform another GET to "planets" with a higher number
     Then I should see the Status Code 404
      And I should get a message with "Not found"
