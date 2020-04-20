#language:pt
@apis
Funcionalidade: API
  Eu como usuario
  Desejo realizar acoes na api

  Contexto: Acesso a API
    Dado que tenho acesso a api
  
    @get
    Cenario: GET
      Quando eu fizer uma requisicao GET
      Entao receberei a resposta GET

    @post
    Cenario: POST
      Quando eu fizer uma requisicao POST
      Entao receberei a resposta POST

    @put
    Cenario: PUT
      Quando eu fizer uma requisicao PUT
      Entao receberei a resposta PUT

    @delete
    Cenario: DELETE
      Quando eu fizer uma requisicao DELETE
      Entao receberei a resposta DELETE

