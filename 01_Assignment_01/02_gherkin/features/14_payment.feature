Feature: Payment

  Scenario: Successful payment with card
    Given the user is on the payment page
    When the user enters valid card details and clicks Pay Now
    Then the system processes the payment via the payment gateway
    And redirects the user to the order confirmation page

  Scenario: Payment fails due to insufficient funds
    Given the user is on the payment page
    When the user submits a card with insufficient funds
    Then the system displays 'Payment failed. Please try a different payment method.'
    And the order is not placed

  Scenario: Payment using mobile wallet
    Given the user selects a mobile wallet option
    When the user completes the wallet authentication
    Then the payment is processed
    And an order confirmation is generated