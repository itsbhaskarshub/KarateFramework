Feature: API Testing For Feching Data

#Get response for PUT  	
Scenario: Get response for xxx
    Given url 'https://reqres.in/api/users/2'
    And request {"id":13,"email":"george.edwards@reqres.in","first_name":"morpheus","last_name":"Edwards","avatar":"https://reqres.in/img/faces/11-image.jpg"}
    When method PUT
    Then status 200
    And print response
    And match response.first_name == "morpheus"

	
		
		