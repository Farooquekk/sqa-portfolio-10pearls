Feature: Book Recommendations

  Scenario: Recommendations shown on home page
    Given the user has browsed or purchased books previously
    When the user visits the home page
    Then a 'Recommended for You' section appears
    And it shows books related to the user's history

  Scenario: No history available
    Given the user has no browsing or purchase history
    When the user visits the home page
    Then the system shows 'Popular Books' or 'New Arrivals' as a default