Feature: Wishlist

  Scenario: Add book to wishlist
    Given the user is logged in and viewing a book
    When the user clicks the wishlist icon
    Then the book is added to the user's wishlist
    And the icon changes to indicate it is saved

  Scenario: Remove book from wishlist
    Given the user has books in the wishlist
    When the user clicks the wishlist icon on a saved book
    Then the book is removed from the wishlist

  Scenario: Move book from wishlist to cart
    Given the user is viewing the wishlist
    When the user clicks 'Add to Cart' on a wishlist item
    Then the book is added to the cart
    And optionally removed from the wishlist