# Assignment 01

**Requirement Analysis and User Story Writing for Online Book Store**

---

## Overview

This assignment focuses on analyzing an online bookstore system and documenting its requirements, user stories, and sprint planning details. The objective is to understand how real-world systems are broken down into testable and structured components.

---

## Objectives

* Perform requirement analysis (functional and non-functional)
* Write structured user stories
* Define acceptance criteria using Gherkin syntax
* Apply sprint planning and story point estimation
* Maintain traceability between requirements and user stories

---

## Folder Structure

```plaintext
Assignment_01/
├── report/
├── gherkin/
│   ├── features/
|       ├── 01_browse_book_catelog (Guest).feature
|       ├── ..................   
└── README.md
```

---

## Report

The report contains:

* Functional Requirements (FR)
* Non-Functional Requirements (NFR)
* User Roles and System Overview
* User Stories with Acceptance Criteria
* Sprint Planning
* Requirement Traceability Matrix (RTM)

Location:
`report/Assignment1_QA_RequirementAnalysis_farooque_sajjad_pdf_form.pdf`

---

## Gherkin Features

The `gherkin/` folder contains behavior-driven test scenarios written in Gherkin format.

### Feature Categories

* **Authentication**
  Login and signup functionality

* **Catalog**
  Browsing and searching books

* **Cart**
  Adding, updating, and removing items

* **Checkout**
  Order placement and payment flow

* **Admin**
  Product and order management

---

## Example Gherkin Scenario

```gherkin
Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters valid email and password
    And clicks on the login button
    Then the user should be redirected to the homepage
```

---

## Key Learnings

* Requirement analysis and documentation
* Writing user stories with clear acceptance criteria
* Using Gherkin for behavior-based testing
* Understanding sprint planning and estimation
* Establishing traceability between requirements and tests

---

## Notes

This assignment is part of my internship learning process. It reflects my approach to applying QA concepts in a structured and practical way. Future assignments will build on these concepts with additional tools and techniques.

---
