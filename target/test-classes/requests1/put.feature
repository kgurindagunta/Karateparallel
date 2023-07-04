Feature: update request

  Background: 
    Given url baseUrl

  Scenario: update request
    And path '2'
    * def data = read("classpath:payload/data.json")
    And request data
    When method put
    Then status 200
    And print responseHeaders
    And print responseTime
    And print responseStatus
    And print responseCookies
