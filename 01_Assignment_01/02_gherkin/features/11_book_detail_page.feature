Feature: Book Detail Page

  Scenario: User opens a book detail page
    Given the user clicks on a book from the catalog
    Then the system opens the book detail page
    And displays the title, author, description, genre, price, cover image, and average rating

  Scenario: Book detail shows customer reviews
    Given the book has at least one customer review
    When the user scrolls to the reviews section
    Then the reviews are visible with reviewer name, star rating, and comment

  Scenario: Add to cart from detail page
    Given the book is in stock
    When the user clicks 'Add to Cart' on the detail page
    Then the book is added to the cart
    And the cart icon updates to reflect the new item count