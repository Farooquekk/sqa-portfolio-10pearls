class InventoryPage {
  elements = {
    inventoryContainer: () => cy.get('#inventory_container'),
    inventoryItems: () => cy.get('.inventory_item'),
    itemNames: () => cy.get('.inventory_item_name'),
    itemPrices: () => cy.get('.inventory_item_price')
  };

  verifyInventoryPageLoaded() {
    this.elements.inventoryContainer().should('be.visible');
  }

  verifyProductsDisplayed() {
    this.elements.inventoryItems()
      .should('have.length.greaterThan', 0);
  }

  openProduct(productName) {
    cy.contains('.inventory_item_name', productName).click();
  }
}

export default InventoryPage;