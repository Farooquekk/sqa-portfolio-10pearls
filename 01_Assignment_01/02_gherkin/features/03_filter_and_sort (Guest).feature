Feature: Filter and Sort

  Scenario: Filter by genre
    Given the visitor is on the catalog or search results page
    When the visitor selects 'Fiction' from the genre filter
    Then only books tagged as 'Fiction' are displayed

  Scenario: Filter by price range
    Given the visitor sets a price filter of Rs. 500 to Rs. 1500
    Then only books priced within that range are shown

  Scenario: Sort by price low to high
    Given the visitor selects 'Price: Low to High' from the sort dropdown
    Then books reorder with the lowest price appearing first

  Scenario: Combined filter and sort
    Given the visitor filters by 'Science' and sorts by 'Rating'
    Then only Science books are shown, ordered by rating descending