Feature: Admin Catalog Management

  Scenario: Add a new book
    Given the admin is logged in and on the catalog management page
    When the admin fills in the book title, author, genre, price, stock, and cover image
    And clicks Save
    Then the new book appears in the catalog
    And is visible to users on the storefront

  Scenario: Edit an existing book
    Given the admin opens an existing book's edit form
    When the admin updates the price and clicks Save
    Then the updated price is reflected on the book detail page

  Scenario: Remove a book
    Given the admin selects a book from the catalog
    When the admin clicks Delete and confirms the prompt
    Then the book is removed from the catalog
    And no longer visible to users