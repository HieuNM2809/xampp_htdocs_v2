describe('Testing Wikipedia', () => {
  it('I can search for content', () => {
    cy.visit('https://www.wikipedia.org');
    // cy.get("input[type='search']").type('Leo Panthera1232');

    cy.get("input[type='search']")
    .invoke('attr', 'value', 'Viet nam')
    .should('have.attr', 'value', 'Viet nam')
    cy.get("button[type='submit']").click();
    // cy.contains('Search results');
    // cy.contains('Panthera leo leo');
  });
});