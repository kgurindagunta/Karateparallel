Feature: config file demo

 Background: 
  Given url baseUrl
  
  Scenario: Post with config.js file
    #And request {"name": "#(userName)", "job": "#(job)"}
    And request {"name": "#(titleName)", "job": "#(job)"}
    When method post
    Then status 201
    And print response