Feature: Book Catalog

  Scenario: Catalog loads on home page
    Given the user navigates to the catalog section
    Then the system displays a list of books
    And each book shows the title, author, cover image, price, and availability status

  Scenario: Catalog displays correct stock status
    Given a book is out of stock in the system
    When the user views that book in the catalog
    Then the catalog entry shows 'Out of Stock'
    And the Add to Cart button is disabled for that book

  Scenario: Catalog pagination
    Given there are more than 20 books in the catalog
    When the user reaches the bottom of the page
    Then the system loads the next 20 books
    Or provides pagination controls to navigate between pages