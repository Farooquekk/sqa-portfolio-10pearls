Feature: Order History

  Scenario: View order history
    Given the user is logged in
    When the user navigates to My Orders
    Then the system displays all past orders
    And each entry shows the order ID, date, status, and total amount

  Scenario: View order details
    Given the user is on the order history page
    When the user clicks on a specific order
    Then the system opens a detail view
    And shows each book in the order with its price, quantity, and shipping info