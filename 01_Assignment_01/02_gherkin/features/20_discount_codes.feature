Feature: Discount Codes

  Scenario: Valid discount code applied
    Given the user is on the checkout page
    When the user enters a valid discount code and clicks Apply
    Then the discount is deducted from the order total
    And the updated total is shown before payment

  Scenario: Invalid or expired code
    Given the user enters an invalid or expired code
    Then the system shows 'This code is invalid or has expired'
    And the original total remains unchanged

  Scenario: One code per order
    Given the user has already applied one code
    When the user tries to apply a second code
    Then the system shows 'Only one discount code can be applied per order'