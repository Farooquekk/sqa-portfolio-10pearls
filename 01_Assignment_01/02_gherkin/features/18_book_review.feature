Feature: Book Reviews

  Scenario: Submit a review for a purchased book
    Given the user has purchased the book
    When the user navigates to the book page and submits a 4-star rating with a comment
    Then the review is saved and displayed on the book detail page
    And the book's average rating is updated

  Scenario: Attempt to review without purchase
    Given the user is logged in but has not purchased the book
    When the user attempts to submit a review
    Then the system displays 'You must purchase this book to leave a review'

  Scenario: Review moderation
    Given a review contains flagged content
    When the moderation check runs
    Then the review is held for admin approval before being published