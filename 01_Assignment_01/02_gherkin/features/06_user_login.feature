Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters a registered email and correct password
    And clicks the Login button
    Then the system authenticates the user
    And redirects to the home page
    And displays the user's name in the navigation bar

  Scenario: Login with incorrect password
    Given the user is on the login page
    When the user enters a registered email and an incorrect password
    And clicks the Login button
    Then the system displays 'Invalid email or password'
    And the user remains on the login page

  Scenario: Login attempt after 5 failed tries
    Given the user has failed to login 5 consecutive times
    When the user attempts to login again
    Then the system locks the account for 15 minutes
    And displays a message informing the user to try later