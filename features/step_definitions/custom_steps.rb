require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code


Then(/^I should be logged in$/) do
  verify_username
end

Then (/^I should see my emails$/) do
	see_email 
end

Then (/^I should open an email/) do 
	open_email
end

Then (/^I should go back to the inbox/) do
	go_back_inbox
end

Then (/^I should compose email/) do
	compose_email
end

Then (/^Then I should not see the composition box/) do 
	compose_box
end

Then (/^I should send email/) do 
	send_email
end

Then (/^I should open new email/) do 
	open_new_email
end

Then (/^I should go back to inbox/) do 
	back_to_inbox
end


def verify_username
	ele_username = $driver.find_element(:id, ":2w")
	if ele_username.text != "Primary"
		raise "Invailid login attempt"
	else
		puts "User has logged in successfully"
	end
end

def see_email
	email = $driver.find_element(:xpath, "//div[text()='Primary']")
	if !email
		raise "Emails not found"
	else
		puts "Emails found have been found"
	end
end

def open_email
	$driver.find_element(:id, ":3h").click
	sleep(2)
	open_email = $driver.find_element(:class, "amn")
	if !open_email
		raise "Email was not opened"
	else
		puts "Email was open"
	end
end


def compose_email
	$driver.find_element(:xpath, "//div[text()='COMPOSE']").click
	sleep(2)
	input_box = $driver.find_element(:xpath, "//div[text()='New Message']") 
	if !input_box
		raise "Email composition cannot begin"
	else
		puts "Email can be composed"
	end
end


def send_email
	click_send = $driver.find_element(:xpath, "//div[text()='Send']").click
	if !click_send
		raise "Email was not sent"
	else
		puts "Email was sent"
	end
end

def back_to_inbox
	click_send = $driver.find_element(:xpath, "//div[text()='Inbox']").click
end









