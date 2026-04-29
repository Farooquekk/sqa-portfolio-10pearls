Feature: Order Notifications

  Scenario: Notification on order placement
    Given the user places an order
    Then the system sends an email confirming the order

  Scenario: Notification when order is shipped
    Given an admin updates the order status to 'Shipped'
    Then the system sends a shipping notification to the customer
    And the notification includes the tracking reference

  Scenario: Notification on delivery
    Given the order status is updated to 'Delivered'
    Then the system sends a delivery confirmation to the customer