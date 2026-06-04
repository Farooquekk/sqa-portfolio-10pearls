# Playwright Daraz Automation Framework

## Objective

Automate a realistic customer journey on Daraz.pk using Playwright and JavaScript while maintaining a clean, reusable, and scalable automation framework.

---

# Framework Design

The project follows Page Object Model (POM).

Benefits:

* Separation of Concerns
* Improved Maintainability
* Reduced Code Duplication
* Better Scalability
* Easier Debugging

---

# Challenges Faced & Solutions

## Challenge 01 - Finding Stable Locators

Initially, multiple elements were identified using dynamic classes.

Examples:

```javascript
page.locator('.search-box__button--1oH7')
```

```javascript
page.locator('.pdp-mod-product-badge-title')
```

Some class names were dynamic and changed between page loads, causing test failures.

### Solution

A combination of:

* Semantic HTML Locators
* Placeholder Locators
* Role Locators
* Text Locators
* CSS Selectors

was used to improve locator stability.

Example:

```javascript
page.locator('h1')
```

```javascript
page.locator('input[placeholder="Min"]')
```

```javascript
page.getByRole('checkbox')
```

---

## Challenge 02 - Price Filter Behavior

Initially, the framework applied the price range and pressed Enter.

```javascript
await page.keyboard.press('Enter');
```

However, Daraz sometimes required clicking the Apply/Submit button.

### Solution

Implemented a fallback strategy.

```javascript
if (await this.priceSubmitBtn.isVisible()) {
    await this.priceSubmitBtn.click();
} else {
    await this.page.keyboard.press('Enter');
}
```

This increased framework reliability.

---

## Challenge 03 - Free Shipping Filter Identification

The assignment required validating free shipping.

Initially, locating the Free Delivery filter was inconsistent.

### Solution

Used multiple locator strategies.

```javascript
this.freeShippingCheckbox =
    page.getByRole(
        'checkbox',
        { name: /Free Shipping/i }
    )
    .or(
        page.getByText(
            'Free Delivery'
        )
    );
```

This ensured compatibility across UI variations.

---

## Challenge 04 - Free Shipping Verification

Initially, validation was based only on:

```text
Free Shipping
```

label visibility.

However, this did not guarantee that shipping cost was actually free.

### Improved Solution

The framework validates the actual shipping fee.

```javascript
const shippingCost =
    await this.shippingFee
        .first()
        .textContent();
```

The automation reads:

```text
FREE
```

from the shipping section.

If free shipping exists:

```javascript
Logger.success(
    'Item opened successfully. Shipping is FREE!'
);
```

Otherwise:

```javascript
Logger.warning(
    `No free delivery available. Shipping cost is: ${trimmedCost}`
);
```

This provides a more realistic business validation.

---

## Challenge 05 - Slow Page Load on Product Details

On slower connections, product detail page elements were not visible within the default 5 second timeout, causing flaky failures on Chromium, Firefox, and WebKit.

### Solution

Increased assertion and waitFor timeouts on product detail page checks.

```javascript
await expect(
    this.productTitle.first()
).toBeVisible({ timeout: 15000 });
```

```javascript
await this.shippingFee
    .first()
    .waitFor(
        { state: 'visible', timeout: 15000 }
    );
```

This eliminated flakiness across all three browsers.

---

# Logging Strategy

A reusable logger utility was implemented.

Examples:

```javascript
Logger.info()
```

```javascript
Logger.success()
```

```javascript
Logger.warning()
```

```javascript
Logger.error()
```

Benefits:

* Cleaner console output
* Easier debugging
* Better execution visibility

---

# Multi-Browser Execution

The framework executes on:

* Chromium
* Firefox
* WebKit

This improves browser compatibility testing.

# Reporting

Playwright HTML reports are automatically generated.

Features:

* Test Summary
* Pass/Fail Statistics
* Browser Results
* Execution Duration
* Trace Information

---

# Key Learnings

* Playwright Locator Strategies
* Page Object Model Implementation
* Dynamic Element Handling
* Browser Automation
* Assertion Strategies
* Report Generation
* Framework Design Best Practices

---

# Conclusion

The final solution successfully automates product search, filtering, product navigation, product validation, and shipping verification on Daraz.pk while maintaining a clean and maintainable Playwright automation framework.
