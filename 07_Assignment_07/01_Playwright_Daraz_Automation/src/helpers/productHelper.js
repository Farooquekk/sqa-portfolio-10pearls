async function validateSearchResults( searchResultsPage ) {

  const count = await searchResultsPage.getProductCount();

  expect(count).toBeGreaterThan(0);

  return count;
}

export {validateSearchResults};