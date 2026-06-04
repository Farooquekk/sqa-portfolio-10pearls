import { test } from '@playwright/test';

import HomePage
    from '../src/pages/HomePage.js';

import SearchResultsPage
    from '../src/pages/SearchResultsPage.js';

import ProductDetailsPage
    from '../src/pages/ProductDetailsPage.js';

import searchData
    from '../src/data/testData.js';

import  Logger 
    from '../src/utils/logger.js';

test.describe(
    'Daraz Product Search Flow',
    () => {

        test(
            'should search product apply filters and verify free shipping',
            async ({ page }) => {

                test.setTimeout(90000);
                
                const homePage =
                    new HomePage(page);

                const searchResultsPage =
                    new SearchResultsPage(page);

                const productDetailsPage =
                    new ProductDetailsPage(page);

                Logger.info(
                    'Opening Daraz homepage'
                );

                await homePage
                    .navigateToHomePage();

                Logger.info(
                    `Searching for ${searchData.keyword}`
                );

                await homePage
                    .searchProduct(
                        searchData.keyword
                    );

                Logger.info(
                    'Applying price filter'
                );

                await searchResultsPage
                    .applyPriceFilter(
                        searchData.minPrice,
                        searchData.maxPrice
                    );

                Logger.info(
                    'Filtering for Free Shipping items'
                );

                await searchResultsPage
                    .applyFreeShippingFilter();

                Logger.info(
                    'Validating search results'
                );

                await searchResultsPage
                    .validateProductsExist();

                Logger.info(
                    'Opening first product'
                );

                await searchResultsPage
                    .openFirstProduct();

                Logger.info(
                    'Verifying product details page'
                );

                await productDetailsPage
                    .verifyProductPageLoaded();

                await productDetailsPage
                    .verifyProductTitleVisible();

                await productDetailsPage
                    .verifyProductPriceVisible();

                Logger.info(
                    'Validating free shipping'
                );

                await productDetailsPage
                    .verifyFreeShippingAvailability();

                Logger.success(
                    'Daraz search flow completed successfully'
                );
            }
        );
    }
);