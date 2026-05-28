import InventoryPage from '../../pages/InventoryPage';
import ProductPage from '../../pages/ProductPage';

describe('Product Navigation', () => {
  const inventoryPage = new InventoryPage();
  const productPage = new ProductPage();

  beforeEach(() => {
    cy.loginAsStandardUser();
  });

  it('should open product details page successfully', () => {
    const productName =
      'Sauce Labs Backpack';

    inventoryPage.openProduct(
      productName
    );

    productPage.verifyProductName(
      productName
    );

    productPage.verifyPriceVisible();

    cy.url().should(
      'include',
      'inventory-item'
    );
  });
});