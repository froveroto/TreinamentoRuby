#language:pt
Funcionalidade: Login
  Eu como cliente do site
  Desejo realizar o login

  Cenario: Tentativa de login com senha invalida
    Dado que estou na tela de login
    Quando eu digitar meu usuario correto e senha incorreta e clicar em login
    Entao receberei uma mensagem informando que a senha esta errada

  @cenario2
  Cenario: Tentativa de login sem senha
    Dado que acessei diretamente a url de login
    Quando eu digitar meu usuario correto sem senha e clicar em login
    Entao receberei uma mensagem informando obrigatoriedade da senha
