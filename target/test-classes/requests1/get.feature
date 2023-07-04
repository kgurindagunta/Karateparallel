Feature: Get request

  Background: 
    Given url baseUrl

  Scenario: Assertions
    And param page = 2
    When method get
    Then status 200
    And print response
