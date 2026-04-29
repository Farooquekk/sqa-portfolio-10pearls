Feature: Filter and Sort

  Scenario: Filter by genre
    Given the user is on the catalog or search results page
    When the user selects 'Fiction' from the genre filter
    Then only books with the genre 'Fiction' are displayed

  Scenario: Filter by price range
    Given the user applies a price filter of Rs. 500 to Rs. 1500
    Then only books priced between Rs. 500 and Rs. 1500 are shown

  Scenario: Sort by price low to high
    Given the user selects 'Price: Low to High' from the sort dropdown
    Then books are reordered with the lowest price appearing first

  Scenario: Combined filter and sort
    Given the user filters by genre 'Science' and sorts by 'Rating'
    Then the system displays only Science books ordered by rating descending