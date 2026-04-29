Feature: Order Confirmation

  Scenario: Confirmation page after payment
    Given the user has completed payment
    Then the system displays a confirmation page
    And shows the order ID, list of purchased books, total amount, and estimated delivery

  Scenario: Confirmation email is received
    Given the order is placed successfully
    Then the system sends a confirmation email to the user's registered address
    And the email includes the order ID, items, and delivery details