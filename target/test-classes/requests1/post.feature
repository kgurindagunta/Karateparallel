Feature: post request

  Background: 
    Given url baseUrl

  Scenario: Delete request having dynamic id
    And request {"name": "kiran", "job": "QA engineer"}
    When method post
    Then status 201
    * def id = response.id
    * print id
