# RubySeleniumTest
Selenium Bindings with Ruby to automate a Google Form Page using TestUnit

# Demo Link

The demo link shows the automated ruby script in action.

http://g.recordit.co/aZI345YOXX.gif

# Exercise

This exercise is meant to give us a basic idea of your coding aptitude and style.

It should also give you a chance to try out Ruby, and see if it's for you. 

Once you have Ruby set up, the exercise should take about 30 - 90 minutes to complete.

Given the following web page, basic web form, write a Ruby script that demonstrates one positive, and one negative test case. 

Please use the following criteria:

- Code should be written in Ruby (any version >= 1.93)

- Use Selenium WebDriver (any browser)

- Use Test Unit to create the test cases

- Briefly describe the two test cases in words

- Create a new public git repository, and push your code to a branch named 'GUI'

# Installation Instructions
1. Make sure your Chrome version must be >= 49.0.2623.0

2. Install chromedriver since I am using Chrome to automate the test cases ```brew install chromedriver```

3. Clone repository ```git clone git@github.com:abhishanga/RubySeleniumTest.git```

4. Change directory to **RubySeleniumTest** ```cd RubySeleniumTest```

5. Install bundler gem ```sudo gem install bundler -v '1.7.8'```

6. ```bundle install```

7. Run this command : ```rake selenium:googleform```

# Positive Test Case 

1. Navigate to the given google web form page. https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform

2. Enter Name.

3. Select a checkbox option for the field labeled as "Do you enjoy development?"

4. From the dropdown list choose any option (for eg. cucumber is chosen in my test case).

5. Add any text comments in Comments Text Box.

6. On clicking the submit button, successful submission of form should take place and we should get redirected to a Thank you page where we see the message your response has been recorded.

# Negative Test Case 

1. Navigate to the given google web form page. https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform

2. Enter Name.

3. Dont Select any checkbox option for the required field labeled as "Do you enjoy development?"

4. From the dropdown list choose any option (for eg. cucumber is chosen in my test case).

5. Add any text comments in Comments Text Box.

6. On clicking the submit button, the form submission fails and an error message "This is a required question" appears below the required  field labeled as "Do you enjoy development?".
