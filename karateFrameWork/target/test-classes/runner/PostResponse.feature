Feature: API Testing For Feching Data

#Get response for Post  	
Scenario: Get response for ID
	Given url 'https://reqres.in/api/users?page=2'
  And request {"id":7}
	When method POST
	Then status 201
	And print response	


	
		
		