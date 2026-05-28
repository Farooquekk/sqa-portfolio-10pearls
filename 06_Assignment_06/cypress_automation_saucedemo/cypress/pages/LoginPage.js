class LoginPage {
  elements = {
    usernameInput: () => cy.get('[data-test="username"]'),
    passwordInput: () => cy.get('[data-test="password"]'),
    loginButton: () => cy.get('[data-test="login-button"]'),
    errorMessage: () => cy.get('[data-test="error"]')
  };

  visit() {
    cy.visit('/');
  }

  enterUsername(username) {
    this.elements.usernameInput().clear().type(username);
  }

  enterPassword(password) {
    this.elements.passwordInput().clear().type(password);
  }

  clickLogin() {
    this.elements.loginButton().click();
  }

  login(username, password) {
    this.enterUsername(username);
    this.enterPassword(password);
    this.clickLogin();
  }

  verifyErrorMessage(expectedMessage) {
    this.elements.errorMessage()
      .should('be.visible')
      .and('contain.text', expectedMessage);
  }
}

export default LoginPage;