Feature: API Testing For Feching Data

#For Background
Background:

	* url 'https://reqres.in/api'
	* header Accept = 'application/json'

#For Assertion		

#Get response for First Name for Positive Testing 	
Scenario: Get response for First Name 
 	Given path '/users'
	And param page = 2
	When method GET
	Then status 200
	And print response	
	And match response.data[0].first_name contains 'Michael'

#Get response for Last Name for Positive Testing 	
Scenario: Get response for Last Name 
  Given path '/users'
	And param page = 2
	When method GET
	Then status 200
	And print response	
	And match response.data[0].last_name contains 'Lawson'
		
#Get response for ID for Positive Testing 	
Scenario: Get response for ID 
  Given path '/users'
	And param page = 2
	When method GET
	Then status 200
	And print response	
	And match response.data[0].id == 7
	
	
		
		