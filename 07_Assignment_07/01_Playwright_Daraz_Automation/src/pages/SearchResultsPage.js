import { expect } from '@playwright/test';

class SearchResultsPage {
    constructor(page) {
        this.page = page;

        this.productCards =
            page.locator(
                '[data-qa-locator="product-item"]'
            );

        this.minPriceInput =
            page.locator(
                'input[placeholder="Min"]'
            );

        this.maxPriceInput =
            page.locator(
                'input[placeholder="Max"]'
            );

        this.priceSubmitBtn = 
            page.locator(
                '.ant-btn-primary, button:has-text("Submit"), .priceRange-filter button'
            ); 
            
        this.freeShippingCheckbox = 
            page.getByText(
                'Free Delivery', { exact: true })
                .or(page.locator('span:has-text("Free Delivery")'))
                .or(page.locator('input[type="checkbox"]+span:has-text("Free Delivery")'));
        
    }

    async applyBrandFilter(brandName) {
        await this.page
            .getByText(
                brandName,
                { exact: false }
            )
            .click();
    }

    async applyPriceFilter(
        minPrice,
        maxPrice
    ) {
        await this.minPriceInput.fill(
            minPrice
        );

        await this.maxPriceInput.fill(
            maxPrice
        );

        if (await this.priceSubmitBtn.isVisible()) {
            await this.priceSubmitBtn
              .click();
        } else {
            await this.page.keyboard.press(
              'Enter'
            );
        }
      
                
    }

    async applyFreeShippingFilter() {
        await this.freeShippingCheckbox
          .first()
          .click();
        
    }

    async getProductCount() {
        await this.productCards
            .first()
            .waitFor({ state: 'visible' });

        return await this.productCards
            .count();
    }

    async validateProductsExist() {
        const count =
            await this.getProductCount();

        expect(count)
            .toBeGreaterThan(0);
    }

    async openFirstProduct() {
        await this.productCards
            .first()
            .click();
    }

   
}

export default SearchResultsPage;