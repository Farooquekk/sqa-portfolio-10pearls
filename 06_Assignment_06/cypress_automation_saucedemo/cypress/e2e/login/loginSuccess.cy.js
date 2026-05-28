import LoginPage from '../../pages/LoginPage';
import InventoryPage from '../../pages/InventoryPage';

describe('Login Success Flow', () => {
  const loginPage = new LoginPage();
  const inventoryPage = new InventoryPage();

  beforeEach(() => {
    loginPage.visit();
  });

  it('should login successfully and redirect to inventory page', () => {
    cy.fixture('users').then((users) => {
      loginPage.login(
        users.validUser.username,
        users.validUser.password
      );

      cy.url().should(
        'include',
        '/inventory.html'
      );

      inventoryPage.verifyInventoryPageLoaded();

      inventoryPage.verifyProductsDisplayed();
    });
  });
});