@FID10-310
Feature: Default

	#{color:#de350b}1- User can log out and ends up in login page.{color}
	#2- The user can not go to the home page again by clicking the step back button after successfully logged out.
	@FID10-302
	Scenario Outline:User can log out and ends up in login page.
		Given user goes to login page
		Then user enters "<username>" as username
		And enters "<password>" as password
		Then user clicks to login button and should be on the home page
		And user should see the logout option from dropdowns by clicking the profile icon.
		Then user should be able to click the logout button and land back on the login page.
		Examples:
			| username                | password     |
			| posmanager55@info.com   | posmanager   |
			| salesmanager34@info.com | salesmanager |
			| posmanager50@info.com   | posmanager   |
			| salesmanager25@info.com | salesmanager |

	#{color:#172b4d}1- User can log out and ends up in login page.{color}
	#*{color:#de350b}2- The user can not go to the home page again by clicking the step back button after successfully logged out.{color}*
	@FID10-305
	Scenario Outline:The user can not go to the home page again by clicking the step back button after successfully logged out.
		Given user goes to login page
		Then user enters "<username>" as username
		And enters "<password>" as password
		Then user clicks to login button and should be on the home page
		And user should see the logout option from dropdowns by clicking the profile icon.
		Then user should be able to click the logout button and land back on the login page.
		When user navigate back user should see the expired message
		Examples:
			| username                | password     |
			| posmanager41@info.com   | posmanager   |
			| salesmanager12@info.com | salesmanager |
			| posmanager45@info.com   | posmanager   |
			| salesmanager69@info.com | salesmanager |