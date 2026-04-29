Feature: Admin Order Management

  Scenario: View all orders
    Given the admin is on the order management page
    Then the system lists all orders with ID, customer name, date, total, and current status

  Scenario: Update order status
    Given the admin opens an order
    When the admin changes the status from 'Pending' to 'Shipped'
    And saves the change
    Then the order status updates
    And the customer receives a notification email

  Scenario: Filter orders by status
    Given the admin is on the order management page
    When the admin selects 'Pending' from the status filter
    Then only pending orders are displayed