Feature: Checkout

  Scenario: Successful checkout with saved address
    Given the user has items in the cart and is logged in
    When the user proceeds to checkout
    Then the system shows the delivery address section
    And pre-fills any saved address
    And displays an order summary with item names, quantities, and total price

  Scenario: Checkout with missing address
    Given the user proceeds to checkout without a saved address
    When the user skips the address form and clicks Continue
    Then the system highlights the required address fields
    And does not proceed to the payment step

  Scenario: Checkout with empty cart
    Given the user's cart is empty
    When the user navigates to checkout
    Then the system redirects to the cart page
    And displays 'Your cart is empty'
