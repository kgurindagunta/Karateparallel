Feature: assertions

  Background: 
    Given url baseUrl

  Scenario: Assertions
    And param page = 2
    When method get
    Then status 200
    And print response
    And match response.per_page == 6
    And match response.data == '#[6]'
    And match response.data[*].id contains [7, 8, 9]
    And match response.data[*].id contains any [5, 6, 7]
    And match response.data[*].first_name contains 'Rachel'
    And match response..last_name contains 'Ferguson'
