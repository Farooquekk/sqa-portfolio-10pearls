import { URLS } from '../utils/constants.js';

class HomePage {
    constructor(page) {
        this.page = page;

        this.searchInput =
            page.locator('input[type="search"]');

        this.searchButton =
            page.locator('.search-box__button--1oH7');
    }

    async navigateToHomePage() {
        await this.page.goto(
            URLS.DARAZ_HOME
        );
    }

    async searchProduct(keyword) {
        await this.searchInput.fill(
            keyword
        );

        await this.searchButton.click();
    }
}

export default HomePage;