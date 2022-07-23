Feature: API Testing For Feching Data

#For Assertion		
#Get response for First Name for Positive Testing 	
Scenario: Get response for First Name 
 
	Given url 'https://reqres.in/api/users?page=2'
	When method GET
	Then status 200
	And print response	
	And match response.data[0].first_name contains 'Michael'

#Get response for Last Name for Positive Testing 	
Scenario: Get response for Last Name 
 
	Given url 'https://reqres.in/api/users?page=2'
	When method GET
	Then status 200
	And print response	
	And match response.data[0].last_name contains 'Lawson'
		
#Get response for ID for Positive Testing 	
Scenario: Get response for ID 
 
	Given url 'https://reqres.in/api/users?page=2'
	When method GET
	Then status 200
	And print response	
	And match response.data[0].id == 7
	
	
		
		