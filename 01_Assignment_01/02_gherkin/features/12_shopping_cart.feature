Feature: Shopping Cart

  Scenario: Add a book to cart
    Given the user is logged in and views an in-stock book
    When the user clicks 'Add to Cart'
    Then the book appears in the cart with quantity set to 1
    And the cart total is updated

  Scenario: Update book quantity in cart
    Given the user has a book in the cart
    When the user changes the quantity to 2
    Then the cart reflects the updated quantity
    And the subtotal for that item is recalculated

  Scenario: Remove a book from cart
    Given the user has one or more books in the cart
    When the user clicks the remove icon for a specific book
    Then that book is removed from the cart
    And the total is updated accordingly

  Scenario: Cart persists after logout and login
    Given the user has items in the cart
    When the user logs out and logs back in
    Then the cart still contains the previously added items
