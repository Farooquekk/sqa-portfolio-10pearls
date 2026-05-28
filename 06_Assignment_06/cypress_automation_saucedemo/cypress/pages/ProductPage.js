class ProductPage {
  elements = {
    productName: () => cy.get('.inventory_details_name'),
    productPrice: () => cy.get('.inventory_details_price')
  };

  verifyProductName(expectedName) {
    this.elements.productName()
      .should('contain.text', expectedName);
  }

  verifyPriceVisible() {
    this.elements.productPrice()
      .should('be.visible');
  }
}

export default ProductPage;