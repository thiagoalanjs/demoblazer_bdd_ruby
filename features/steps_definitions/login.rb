Quando('clico no link de Log in') do
    login.click_link_log_in
end

Quando('realizo autentição com dados válidos') do
   login.login_authentication
end

Então('verifico a mensagem {string} no menu') do |wellcome_message|
    page.has_content?(wellcome_message) 
end

Dado('digito {string} inválido') do |username|
    login.field_username.set username
end

Dado('digito {string} inválida') do |password|
    login.field_password.set password
end

Dado('clico no botão Log in') do
    login.click_log_in
end

Então('verifico a mensagem {string} no alert') do |error_message|
    wait_elements
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eq error_message
    page.driver.browser.switch_to.alert.accept
end