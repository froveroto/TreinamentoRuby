Dado("que estou na tela de login") do
  @home_page = HomePage.new
  @login_page = LoginPage.new
  @home_page.load
  expect(@login_page).to have_signInbtn
  @login_page.signInbtn.click
  expect(@login_page).to have_emailUser
end

Quando("eu digitar meu usuario correto e senha incorreta e clicar em login") do
  @login_page.emailUser.set 'fabio.roveroto@inmetrics.com.br'
  @login_page.passUser.set 'senhaincorreta'
  @login_page.submitLogin.click
end

Entao("receberei uma mensagem informando que a senha esta errada") do
  @login_page.loginErrormsg.text.should match('Authentication failed.')
end

Quando("eu digitar meu usuario correto sem senha e clicar em login") do
  @login_page.emailUser.set 'fabio.roveroto@inmetrics.com.br'
  @login_page.submitLogin.click
end

Entao("receberei uma mensagem informando obrigatoriedade da senha") do
  @login_page.loginErrormsg.text.should match('Password is required.')
end

Dado("que acessei diretamente a url de login") do
  @login_page = LoginPage.new
  @login_page.load
  expect(@login_page).to have_emailUser
end
