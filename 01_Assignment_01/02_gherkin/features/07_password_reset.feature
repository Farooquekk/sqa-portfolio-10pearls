Feature: Password Reset

  Scenario: Successful password reset request
    Given the user is on the forgot password page
    When the user enters their registered email
    And clicks Send Reset Link
    Then the system sends a password reset email
    And displays 'Check your inbox for reset instructions'

  Scenario: Password reset with unregistered email
    Given the user is on the forgot password page
    When the user enters an email not in the system
    And clicks Send Reset Link
    Then the system shows the same success message to prevent email enumeration

  Scenario: Expired reset link
    Given the user clicks a password reset link older than 60 minutes
    Then the system displays 'This link has expired. Please request a new one.'