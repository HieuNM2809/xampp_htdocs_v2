describe('Test Flow Cntact Sales Notion Tablet', () => {
  it('Open website', ()=> {
    cy.visit('https://www.notion.so/')
  })
  // cy.viewport(1920, 1080)

  it('Click open menu', ()=> {

    // lệnh click
    cy.get('.menu-toggle').click() 
  })
  it('Open Contect Sales', ()=> {
    cy.visit('https://www.notion.so/contact-sales')
  })

  it('Test No Fill Value', ()=> {
    cy.get('.jsx-ec2682ece98d48f .submit-wrap .button-size-l').click()
  })
  it('Check Email Error', ()=> {
    // Điền thông tin form hợp lệ
    cy.get(':nth-child(2) > .input-wrap > .jsx-2655736279')
    .type('test last name')
    cy.get('.jsx-3153388610 > :nth-child(1) > .input-wrap > .jsx-2655736279')
    .type('test first name')
    cy.get(':nth-child(3) > label.jsx-3455048443 > .input-wrap > .jsx-2655736279')
    .type('test Company ')
    cy.get('.select-wrap select[name="companySize"]').select('1-19 employees') 
    cy.get('.select-wrap select[name="country"]').select('Åland Islands') 

    //Điền thông tin email sai
    cy.get('input[name="email"]')
    .type('hieunm47fpt.com.vn')

    cy.get('.jsx-ec2682ece98d48f .submit-wrap .button-size-l').click()
  })
  it('Check Email OK', ()=> {

    // reset value
    cy.get(':nth-child(2) > .input-wrap > .jsx-2655736279').clear()
    cy.get('.jsx-3153388610 > :nth-child(1) > .input-wrap > .jsx-2655736279').clear()
    cy.get(':nth-child(2) > label.jsx-3455048443 > .input-wrap > .jsx-2655736279').clear()
    cy.get(':nth-child(3) > label.jsx-3455048443 > .input-wrap > .jsx-2655736279').clear()
    cy.get('input[name="email"]').clear()
    cy.get('.select-wrap select[name="companySize"]').select('1-19 employees') 
    cy.get('.select-wrap select[name="country"]').select('Åland Islands') 

    // Điền thông tin form hợp lệ
    cy.get(':nth-child(2) > .input-wrap > .jsx-2655736279')
    .type('test last name')
    cy.get('.jsx-3153388610 > :nth-child(1) > .input-wrap > .jsx-2655736279')
    .type('test first name')
    cy.get(':nth-child(3) > label.jsx-3455048443 > .input-wrap > .jsx-2655736279')
    .type('test Company ')
    cy.get('.select-wrap select[name="companySize"]').select('1-19 employees') 
    cy.get('.select-wrap select[name="country"]').select('Åland Islands') 

    //Điền thông tin email sai
    cy.get('input[name="email"]')
    .type('hieunm47@fpt.com.vn')
    
    cy.get('.jsx-448f407d1ced1fc8 > .jsx-2971364727').click()
  })

})

//cy.get('.btn').click() 
// cy.get('#email')
// .invoke('attr', 'value', 'hieunm47@fpt.com.vn')
// cy.get('#password')
// .invoke('attr', 'value', 'CNTT@123$%^&*()')


