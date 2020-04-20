Dado("que acessei o login") do
  @home_page = HomePage.new
  @login_page = LoginPage.new
  @home_page.load
  expect(@login_page).to have_signInbtn
  @login_page.signInbtn.click
  expect(@login_page).to have_emailUser
end

Quando("eu digitar {string} e {string} invalidos e clicar em login") do |usuarioinvalidos, senhainvalida|
  @login_page.emailUser.set usuarioinvalidos
  @login_page.passUser.set senhainvalida
  @login_page.submitLogin.click
end

Entao("receberei a mensagem {string} informando o erro") do |mensagemdeerro|
  @login_page.loginErrormsg.text.should match(mensagemdeerro)
end