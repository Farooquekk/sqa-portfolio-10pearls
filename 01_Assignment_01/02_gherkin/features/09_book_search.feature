Feature: Book Search

  Scenario: Search returns matching results
    Given the user is on any page with the search bar visible
    When the user types 'Rich Dad Poor Dab' and presses Enter
    Then the system displays all books matching the query
    And results are shown within 2 seconds

  Scenario: Search with no results
    Given the user is on the search page
    When the user searches for a term that matches no book
    Then the system displays 'No results found for your search'
    And suggests related categories or popular books

  Scenario: Search with partial keyword
    Given the user types a partial title or author name
    Then the system returns all books that partially match the input
