Dado('que acesso o site demoblaze') do
    visit "/"
end

Quando('clico no link Sign up') do
    criacao_conta.click_link_signup
end

Quando('realizo cadastro') do
    criacao_conta.complete_registration
end

Então('valido a mensagem de sucesso {string}') do |register_success_message|
    wait_elements
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eq register_success_message
    page.driver.browser.switch_to.alert.accept
end

Quando('preencho o campo username {string}') do |username|
    criacao_conta.field_username.set username
end
  
Quando('preencho o campo senha {string}') do |password|
    criacao_conta.field_password.set password
end

Quando('clico no botão Sign Up') do
    criacao_conta.click_sign_up
end

Então('valido a mensagem de erro {string}') do |error_message|
    wait_elements
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eq error_message
    page.driver.browser.switch_to.alert.accept
end