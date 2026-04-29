Feature: Book Search

  Scenario: Search returns matching results
    Given the visitor is on any page
    When the visitor types 'Atomic Habits' in the search bar and presses Enter
    Then the system displays books matching the query
    And results appear within 2 seconds

  Scenario: No results found
    Given the visitor searches for a term with no matching books
    Then the system shows 'No results found for your search'
    And suggests related categories or popular books

  Scenario: Partial keyword search
    Given the visitor types a partial title or author name
    Then the system returns all books that partially match the input