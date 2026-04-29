Feature: Book Catalog

  Scenario: Catalog loads for a guest user
    Given a visitor opens the Online Book Store
    Then the catalog displays a list of available books
    And each book shows title, author, cover image, price, and stock status

  Scenario: Out-of-stock book is marked correctly
    Given a book has zero stock in the system
    When a guest views the catalog
    Then that book shows 'Out of Stock'
    And the Add to Cart button is not visible for that book

  Scenario: Catalog pagination
    Given there are more than 20 books in the system
    When the guest reaches the end of the current page
    Then the system loads the next 20 books or shows pagination controls