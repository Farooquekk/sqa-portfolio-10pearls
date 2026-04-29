Feature: Admin User Management

  Scenario: View all users
    Given the admin is on the user management page
    Then a list of all registered users is displayed
    And each entry shows name, email, registration date, and account status

  Scenario: Disable a user account
    Given the admin selects a user and clicks Disable Account
    When the admin confirms the action
    Then the account status changes to 'Disabled'
    And the user cannot log in until the account is re-enabled

  Scenario: Re-enable a disabled account
    Given the admin selects a disabled account
    When the admin clicks Enable Account
    Then the account status changes to 'Active'
    And the user can log in again

  Scenario: Search users by email
    Given the admin types a partial email in the search box
    Then the user list filters to show matching accounts only