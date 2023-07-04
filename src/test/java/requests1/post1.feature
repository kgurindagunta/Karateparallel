Feature: post from json file

  Background: 
    Given url baseUrl

  Scenario: update request
 * def data = read("classpath:payload/data.json")
    And request data
    When method post
    Then status 201
    And print responseHeaders
    And print responseTime
    And print responseStatus
    And print responseCookies
