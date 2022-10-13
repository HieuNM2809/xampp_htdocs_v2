describe('Test Flow Contect Sales Notion Tablet', () => {
  it('Open website', ()=> {
    cy.visit('https://www.notion.so/')
  })
  // cy.viewport(1920, 1080)

  it('Click open menu', ()=> {
    cy.get('.menu-toggle').click() 
  })
  it('Open Contect Sales', ()=> {
    cy.visit('https://www.notion.so/contact-sales')
  })

  it('Test No Fill Value', ()=> {
    cy.get('.jsx-ec2682ece98d48f .submit-wrap .button-size-l').click()
   
  })
  it('Check Email Error', ()=> {
    // cy.get('.jsx-2655736279.jsx-3868764881.input').click()
    cy.get('.jsx-2655736279.jsx-3868764881.input')
    .invoke('attr', 'value', 'test123')

    cy.get('input[name="email"]')
    .invoke('attr', 'value', 'hieunm47fpt.con.vn')
    .should('have.attr', 'value', 'hieunm47fpt.con.vn')

    // cy.get('.jsx-ec2682ece98d48f .submit-wrap .button-size-l').click()


    // cy.get('.select-wrap select[name="companySize"]').select('1-19 employees') 
    // cy.get('.select-wrap select[name="country"]').select('Åland Islands') 
  })

})

//cy.get('.btn').click() 
// cy.get('#email')
// .invoke('attr', 'value', 'hieunm47@fpt.com.vn')
// cy.get('#password')
// .invoke('attr', 'value', 'CNTT@123$%^&*()')


