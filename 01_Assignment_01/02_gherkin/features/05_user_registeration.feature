Feature: User Registration

  Scenario: Successful registration with valid details
    Given the user is on the registration page
    When the user enters a valid email, password, and full name
    And submits the registration form
    Then the system creates the account
    And sends a verification email to the registered address
    And redirects the user to the email confirmation page

  Scenario: Registration with an already registered email
    Given the user is on the registration page
    When the user enters an email that is already in the system
    And submits the registration form
    Then the system displays the error 'This email is already registered'
    And the form is not submitted

  Scenario: Registration with a weak password
    Given the user is on the registration page
    When the user enters a password shorter than 8 characters
    Then the system shows inline validation 'Password must be at least 8 characters'
    And the submit button remains disabled