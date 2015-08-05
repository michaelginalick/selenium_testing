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
		When I click on element having id ":ml"
		Then I wait for 1 sec
		And I enter "michaellickallen@gmail.com" into input field having class "vO"
		Then I wait for 1 sec
		And I enter "This is Mike" into input field having class "aoT"
		Then I should send email
		Then I wait for 5 sec
		When I click on element having id ":2w"
		#Then I wait for 2 sec
		#Then I should open new email
