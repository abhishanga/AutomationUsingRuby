require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'

class TestGoogleForm < Test::Unit::TestCase
  NAME_BOX = { name: 'entry.1041466219' }
  CHECK_BOX = { name: 'entry.310473641' }
  DROPDOWN_LIST = { name: 'entry.262759813' }
  TEXT_BOX = { name: 'entry.649813199' }
  SUBMIT_BUTTON = { id: 'ss-submit' }

  # Setup for selenium webdriver tests
  def setup
    # Create selenium objects
    @driver = Selenium::WebDriver.for :chrome
    @wait = Selenium::WebDriver::Wait.new :timeout => 10
    ENV['base_url'] = 'https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform'
    @driver.get ENV['base_url']
  end

  # Method to allow elements to load
  def find hash
    assert_nothing_raised do
      wait = Selenium::WebDriver::Wait.new :timeout => 30
      wait.until { @driver.find_element hash }
    end
    @driver.find_element hash
  end

  # Negative test case - To display error message when checkbox is not selected
  def test_negative
    # Navigate to the google form page
    @driver.find_element(NAME_BOX).send_keys 'Test User'
    # Traversing elements in dropdown list
    dropdown_list = @driver.find_element(DROPDOWN_LIST)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Cucumber' }
    @driver.find_element(TEXT_BOX).send_keys 'In software testing, test automation is the use of special software (separate from the software being tested) to control the execution of tests and the comparison of actual outcomes with predicted outcomes.'
    # Submit google form
    @driver.find_element(SUBMIT_BUTTON).click
      # Make sure error message gets displayed when checkbox is not selected.
      assert_nothing_raised do
        @wait.until { @driver.find_element :xpath => '//div[.="This is a required question"]' }
        # Sleep is used to induce delay for aesthetic purposes to show in demo. Not needed for actual test case.
        sleep 5
      end
  end

  # Positive test case - Succesful submission of form on passing in correct form fields.
  def test_positive
    @driver.find_element(NAME_BOX).send_keys 'Test User'
    @driver.find_element(CHECK_BOX).click
    dropdown_list = @driver.find_element(DROPDOWN_LIST)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Cucumber' }
    @driver.find_element(TEXT_BOX).send_keys 'In software testing, test automation is the use of special software (separate from the software being tested) to control the execution of tests and the comparison of actual outcomes with predicted outcomes.'
    # Submit google form
    @driver.find_element(SUBMIT_BUTTON).click
      # Make sure Thanks page comes after submitting a response
      assert_nothing_raised do
        assert_equal("Thanks!", @driver.title())
        @wait.until { @driver.find_element :xpath => '//div[.="Your response has been recorded."]' }
        # Sleep is used to induce delay for aesthetic purposes to show in demo. Not needed for actual test case.
        sleep 5
      end
  end

  # Tear down setup
  def teardown
    @driver.quit
  end
end