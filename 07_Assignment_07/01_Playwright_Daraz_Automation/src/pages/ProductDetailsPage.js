import { expect } from '@playwright/test';
import { SHIPPING } from '../utils/constants.js';
import Logger from '../utils/logger.js';

class ProductDetailsPage {
    constructor(page) {
        this.page = page;

        this.shippingFee =
            page.locator(
                '.delivery-option-item__shipping-fee'
            );

        this.productTitle =
            page.locator(
                'h1'
            );

        this.productPrice =
            page.locator(
                '.pdp-price'
            );
    }

    async verifyProductPageLoaded() {
        await expect(this.page)
            .toHaveURL(/product/i);
    }

    async verifyProductTitleVisible() {
        await expect(
            this.productTitle.first()
        ).toBeVisible({ timeout: 15000 });
    }

    async verifyProductPriceVisible() {
        await expect(
            this.productPrice.first()
        ).toBeVisible({ timeout: 15000 });
    }

    
    async verifyFreeShippingAvailability() {
        
        await this.shippingFee
            .first()
            .waitFor(
                { state: 'visible', timeout: 15000 }
            );
        
        const shippingCost = 
            await this.shippingFee
                .first()
                .textContent();

        const trimmedCost = 
            shippingCost
            .trim();

        if (/FREE/i.test(trimmedCost)) {
            Logger.success(
                'Item opened successfully. Shipping is FREE!'
            );
        } else {
            Logger.warning(
                `STRATEGY ALERT: No free delivery available for this item. Instead, shipping price is: ${trimmedCost}`
            );
        }
    }

}

export default ProductDetailsPage;