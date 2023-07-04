Feature: data driven demo

  Background: 
    Given url baseUrl

  Scenario Outline: Data driven request
    And request {"name": "<nameTitle>", "job": "<jobTitle>"}
    When method post
    Then status 201
    And print response

    Examples: 
      | nameTitle | jobTitle           |
      | Kiran     | QA Engineer        |
      | Jitendra  | Senior QA Engineer |
