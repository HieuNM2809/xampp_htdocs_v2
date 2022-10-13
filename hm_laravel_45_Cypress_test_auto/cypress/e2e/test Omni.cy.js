describe('Test Flow Login Omni', () => {
  it('Open website', ()=> {
    cy.visit('http://omniagent-stag.fpt.net/')
  })

  it('Test Text', ()=> {
    cy.get('h4').should('have.text', 'Chào mừng bạn  đến với OmniAgent')
    cy.get('p').should('have.text', 'Chúc bạn có một ngày làm việc thật tuyệt vời và thoải mái!')
    cy.get('.label-title').should('have.text', 'OmniAgent')
    cy.get(':nth-child(3) > ._label').should('have.text', 'Email')
    cy.get('.input-group > ._label').should('have.text', 'Mật khẩu')
  })

  it('Test Not Fill Value', ()=> {
    // lệnh click
    cy.get('.btn').click() 
  })

  it('Check Message Error', ()=> {
    cy.get('#email-error').first().should('have.text', 'Anh/Chị vui lòng nhập email.')
    cy.get('#password-error').first().should('have.text', 'Anh/Chị vui lòng nhập mật khẩu.')
  })

  it('Check Email Error', ()=> {
    // Điền thông tin form hợp lệ
    cy.get('input[name="password"]')
    .type('CNTT@123$%^&*()')

    //Điền thông tin email sai
    cy.get('input[name="email"]')
    .type('hieunm47fpt.com.vn')

    cy.get('.btn').click()

    cy.get('#email-error').first().should('have.text', 'Email sai định dạng.')
  })
  it('Check Email OK', ()=> {
    // reset value
    cy.get('input[name="email"]').clear()
    cy.get('input[name="password"]').clear()

    // Điền thông tin form hợp lệ
    cy.get('input[name="password"]')
    .type('CNTT@123$%^&*()')

    //Điền thông tin email sai
    cy.get('input[name="email"]')
    .type('hieunm47@fpt.com.vn')

    cy.get('.btn').click()
  })
  it('Check Password False', ()=> {
    cy.visit('http://omniagent.fpt.net/')
  
    cy.get('input[name="email"]')
    .type('hieunm47@fpt.com.vn')

    // pass sai
    cy.get('input[name="password"]')
    .type('CNTT@123$%^&*(')

    cy.get('.btn').click()
    cy.get('#password-error').first().should('have.text', ' Thông tin tài khoản không chính xác, Anh/Chị vui lòng kiểm tra lại thông tin đăng nhập')
  })
  it('Check Login Correct', ()=> {
    // reset value
    cy.get('input[name="email"]').clear()
    cy.get('input[name="password"]').clear()

    // Điền thông tin form hợp lệ
    cy.get('input[name="password"]')
    .type('CNTT@123$%^&*()')

    //Điền thông tin email sai
    cy.get('input[name="email"]')
    .type('hieunm47@fpt.com.vn')

    cy.get('.btn').click()
  })

})

