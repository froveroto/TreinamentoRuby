#language:pt
@loginv2
Funcionalidade: Login
  Eu como usuario do site
  Pretendo realizar o login
  Para visualizar a area logada

  Contexto: Estar na tela de login
    Dado que acessei o login

    @loginInvalido
    Esquema do Cenario: Acessos Invalidos
      Quando eu digitar "<usuarioinvalidos>" e "<senhainvalida>" invalidos e clicar em login
      Entao receberei a mensagem "<mensagemdeerro>" informando o erro

      Exemplos:
      |usuarioinvalidos |senhainvalida|mensagemdeerro            |
      |usuario          |senha12345   |Invalid email address.    |
      |usuario@         |senha12345   |Invalid email address.    |
      |usuario.com      |senha12345   |Invalid email address.    |
      |usuario@..       |senha12345   |Invalid email address.    |
      |usuario@.com     |senha12345   |Invalid email address.    |
      |usuario@gmail.com|senha12345   |Authentication failed.    |
      |                 |senha12345   |An email address required.|
      |usuario@gmail.com|             |Password is required.     |