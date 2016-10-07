# RubySeleniumTest
Selenium Bindings with Ruby to automate a Google Form Page using TestUnit

# Demo Link

# Exercise

This exercise is meant to give us a basic idea of your coding aptitude and style.

It should also give you a chance to try out Ruby, and see if it's for you. 

Once you have Ruby set up, the exercise should take about 30 - 90 minutes to complete.

Given the following web page, basic web form, write a Ruby script that demonstrates one positive, and one negative test case. 

Please use the following criteria:

1.) Code should be written in Ruby (any version >= 1.93)

2.) Use Selenium WebDriver (any browser)

3.) Use Test Unit to create the test cases

4.)Briefly describe the two test cases in words

5.) Create a new public git repository, and push your code to a branch named 'GUI'

# Positive Test Case 

1.) Navigate to the given google web form page. https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform

2.) Enter Name.

3.) Select a checkbox option for the field labeled as "Do you enjoy development?"

4.) From the dropdown list choose any option (for eg. cucumber is chosen in my test case).

5.) Add any text comments in Comments Text Box.

6.) On clicking the submit button, successful submission of form should take place and we should get redirected to a Thank you page where we see the message your response has been recorded.

# Negative Test Case 

1.) Navigate to the given google web form page. https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform

2.) Enter Name.

3.) Dont Select any checkbox option for the required field labeled as "Do you enjoy development?"

4.) From the dropdown list choose any option (for eg. cucumber is chosen in my test case).

5.) Add any text comments in Comments Text Box.

6.) On clicking the submit button, the form submission fails and an error message "This is a required question" appears below the required  field labeled as "Do you enjoy development?".
