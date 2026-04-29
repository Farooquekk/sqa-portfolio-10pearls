Feature: Book Detail Page

  Scenario: Book detail page opens
    Given the visitor clicks on a book in the catalog
    Then the system opens the book detail page
    And displays title, author, description, genre, price, cover image, and average rating

  Scenario: Reviews are visible on detail page
    Given the book has at least one customer review
    When the visitor scrolls to the reviews section
    Then reviews appear with reviewer name, star rating, and comment

  Scenario: Add to Cart from detail page (redirects guest)
    Given the visitor is not logged in and clicks 'Add to Cart'
    Then the system redirects to the login page
    And shows 'Please log in to add items to your cart'
