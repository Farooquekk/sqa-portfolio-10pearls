# Assignment 3 - Multi-Site Bug Report

## Project Overview

This assignment covers manual bug testing across **three live websites**. Each site was tested for functional, UI, usability, and performance issues using structured bug reporting in Microsoft Excel. All bugs include reproduction steps, expected vs actual results, severity ratings, and screenshot references.

---

## 🌐 Sites Tested

| # | Site | Bugs Found |
|---|------|-----------|
| 1 | [demoblaze.com](https://demoblaze.com) | 8 |
| 2 | [the-internet.herokuapp.com](https://the-internet.herokuapp.com) | 8 |
| 3 | [saucedemo.com](https://saucedemo.com) | 6 |
| | **Total** | **22** |

---

## 📁 Repository Structure

```
03_Assignment_03/
│
├──📁01_Assignment_File/
   ├── 📄Assignment_03_Bug_Reporting_Farooque_Sajjad.xlsx     ← Full bug report with all sheets
│
├── 📁 screenshots/
│   │
│   ├── 📁 demoblaze/
│   │   ├── 01_carousel_overlap.png
│   │   ├── 02_no_active_nav_indicator.png
│   │   ├── 03_add_to_cart_late_feedback.png
│   │   ├── 04_cart_total_no_update.png
│   │   ├── 05_empty_cart_order.png
│   │   ├── 06_invalid_credit_card_01.png
|   |   ├── 06_invalid_credit_card_02.png 
│   │   ├── 07_contact_form_empty_submit.png
│   │   └── (BUG-007 - No SS Required)
│   │
│   ├── 📁 the-internet/
│   │   ├── 08_broken_images.png
│   │   ├── 09_checkbox_no_persistence.png
│   │   ├── 10_dropdown_placeholder.png
│   │   ├── 11_dynamic_content_no_indicator.png
│   │   ├── 12_file_upload_no_restriction.png
│   │   ├── 13_js_prompt_null_result.png
│   │   ├── 14_disappearing_elements.png
│   │   └── 15_empty_login_form.png
│   │
│   └── 📁 saucedemo/
│       ├── 16_cart_no_quantity_option.png
│       ├── 17_firstname_single_char.png
│       ├── 18_postal_code_symbols.png
│       ├── 19_dog_image_placeholder.png
│       ├── 20_lastname_uneditable.png
│       └── 21_filter_not_working.png
│
└── 📄 README.md
```

---

## 📊 Bug Summary

### By Severity

| Severity | Count |
|----------|-------|
| 🔴 High | 6 |
| 🟡 Medium | 11 |
| 🟢 Low | 5 |
| **Total** | **22** |

### By Bug Type

| Type | Count |
|------|-------|
| Functional | 13 |
| Usability | 5 |
| UI | 3 |
| Performance | 1 |

---

## 🔴 demoblaze.com - Bug List

| Bug ID | Title | Type | Severity |
|--------|-------|------|----------|
| BUG-001 | Carousel navigation arrows overlap product cards on small screens | UI | Medium |
| BUG-002 | Active navigation link has no visual indicator for current page | UI | Low |
| BUG-003 | Add to Cart button gives no loading feedback and shows a delayed alert | Usability | Medium |
| BUG-004 | Cart page does not update total when item is deleted without page refresh | Performance | High |
| BUG-005 | Cart allows placing order with empty cart | Functional | High |
| BUG-006 | Order form accepts alphabetic text in Credit Card field | Functional | High |
| BUG-007 | Login error message is vague and does not differentiate wrong password from unregistered username | Usability | Low |
| BUG-08 | Contact form submits successfully with all fields left blank | Functional | High |

---

## 🟡 the-internet.herokuapp.com - Bug List

| Bug ID | Title | Type | Severity |
|--------|-------|------|----------|
| BUG-09 | Three broken images visible on the Broken Images page with no alt text | Functional | Medium |
| BUG-010 | Checkbox page has no form submission or save action, making state changes meaningless | Usability | Low |
| BUG-011 | Dropdown default option 'Please select an option' remains selectable after interaction | Usability | Low |
| BUG-012 | Dynamic content page reloads different text on every refresh with no user control | Usability | Low |
| BUG-013 | File upload page accepts any file type without size or type restriction | Functional | Medium |
| BUG-014 | JS Prompt alert does not reflect typed input on result page when cancelled | Functional | Medium |
| BUG-015 | Navigation menu items appear and disappear randomly on page refresh | Functional | Medium |
| BUG-016 | User is submitting empty login form | Functional | Medium |

---

## 🟢 saucedemo.com - Bug List

| Bug ID | Title | Type | Severity |
|--------|-------|------|----------|
| BUG-017 | Cart is not allowing to increase quantity from one | Functional | High |
| BUG-018 | Checkout form accepts single character in First Name | Functional | Medium |
| BUG-019 | Postal Code field accepts invalid symbols (e.g., @#$) | Functional | Medium |
| BUG-20 | Product images are replaced by "Dog" placeholder | UI | Medium |
| BUG-021 | "Last Name" field is uneditable and blocks checkout | Functional | High |
| BUG-022 | "Filter" functionality does not sort items correctly | Functional | Medium |

---

## 📸 Screenshots Folder

### demoblaze.com

| File | What I Captured |
|------|----------------|
| `01_carousel_overlap.png` | Resized browser to 420px width → showed carousel arrows overlapping nav links |
| `02_no_active_nav_indicator.png` | Clicked between Home / Contact → showed all nav links looked identical with no highlight |
| `03_add_to_cart_no_feedback.png` | Clicked Add to Cart → captured the delayed browser alert popping up |
| `04_cart_total_no_update.png` | Deleted one item from cart → showed old total still displayed before refresh |
| `05_empty_cart_order.png` | Empty cart → showed Place Order button is still active and modal opens |
| `06_invalid_credit_card.png` | Typed `abcdefghij` in Credit Card field → showed order placed successfully |
| `07_contact_form_empty_submit.png` | Leaved all Contact fields blank → showed the "Thanks for the message!!" alert |
| *(BUG-007)* | ❌ No screenshot required for this bug |

### the-internet.herokuapp.com

| File | What I Captured |
|------|----------------|
| `08_broken_images.png` | Navigated to `/broken_images` → showed 3 broken image icons on screen |
| `09_checkbox_no_persistence.png` | Toggled checkboxes → navigated away → come back → showed reset state |
| `10_dropdown_placeholder.png` | Selected Option 1 → reopen dropdown → showed placeholder still selectable |
| `11_dynamic_content_no_indicator.png` | Taked  screenshot side by side showing text changed after refresh |
| `12_file_upload_no_restriction.png` | Uploaded a `.exe` file → showed it was accepted without warning |
| `13_js_prompt_null_result.png` | Clicked JS Prompt → Cancel → show result says `You entered: null` |
| `14_disappearing_elements.png` | Refreshed multiple times → showed different number of nav items each time |
| `15_empty_login_form.png` | Submitted empty login form → showed "username is invalid" error message |

### saucedemo.com *(Login: `problem_user` / `secret_sauce`)*

| File | What I Captured |
|------|----------------|
| `16_cart_no_quantity_option.png` | Opened cart → showed there is no quantity increment control |
| `17_firstname_single_char.png` | Typed `f` in First Name → clicked Continue → showed it proceeds successfully |
| `18_postal_code_symbols.png` | Typed `!!!` in Zip Code → clicked Continue → showed it proceeds to summary |
| `19_dog_image_placeholder.png` | Opened Inventory page → showed all products showing the same dog image |
| `20_lastname_uneditable.png` | Clicked Last Name field → try typing → showed nothing appears / field is readonly |
| `21_filter_not_working.png` | Selected "Price (low to high)" from filter → showed products order unchanged |

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Microsoft Excel | Bug documentation and reporting |
| Google Chrome 124 | Primary test browser |
| Windows 10 | Test environment OS |
| Snipping Tool / Screenshot | Capturing bug evidence |

---

## 📚 Resources

- [10Pearls University](https://10pearlsuniversity.org)
- [demoblaze.com](https://www.demoblaze.com)
- [The Internet – Herokuapp](https://the-internet.herokuapp.com)
- [Sauce Demo](https://www.saucedemo.com)

---

<div align="center">
  <b>Submitted as part of QA Training - 10Pearls University</b>
</div>