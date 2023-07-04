Feature: delete requests

  Background: 
    Given url baseUrl

  Scenario: Delete request
    And path '2'
    When method delete
    Then status 204

  Scenario: delete request having dynamic id
    * call read('post.feature')
    And path 'id'
    When method delete
    Then status 204
