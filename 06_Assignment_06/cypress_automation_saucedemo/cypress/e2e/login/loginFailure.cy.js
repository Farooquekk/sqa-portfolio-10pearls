import LoginPage from '../../pages/LoginPage';
import { LOGIN_ERROR_MESSAGE } from '../../utils/constants';

describe('Login Failure Scenarios', () => {
  const loginPage = new LoginPage();

  beforeEach(() => {
    loginPage.visit();
  });

  it('should display error for invalid credentials', () => {
    cy.fixture('users').then((users) => {
      loginPage.login(
        users.invalidUser.username,
        users.invalidUser.password
      );

      loginPage.verifyErrorMessage(
        LOGIN_ERROR_MESSAGE
      );
    });
  });
});