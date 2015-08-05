Feature: Gmail_login
	Scenario: Valid_gmail_login
		Given I navigate to "http://www.gmail.com"
		And I enter "michaellickallen@gmail.com" into input field having id "Email"
		When I click on element having id "next"
		Then I wait for 5 sec
		And I enter "Chicago#123" into input field having id "Passwd"
		When I click on element having id "signIn"
		Then I wait for 15 sec
		Then I should be logged in
		Then I should see my emails
		Then I should open an email
		Then I should go back to the inbox
		Then I wait for 5 sec
		Then I should compose email
		Then I wait for 5 sec
		And I enter "michaellickallen@gmail.com" into input field having id ":ml"
		And I enter "This is Mike" into input field having id ":of"
		And I enter "This is mike testing yesmail" into input field having id ":ph"
		When I click on the element having id ":n7"
		Then I wait for 2 sec
		Then I should not see the composition box