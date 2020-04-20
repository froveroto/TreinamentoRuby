response = nil

Dado("que tenho acesso a api") do
end

Quando("eu fizer uma requisicao GET") do
  response = HTTParty.get("https://jsonplaceholder.typicode.com/users")
  puts response.body
end

Entao("receberei a resposta GET") do
  expect(response.code).to eq 200
  puts "Validado codigo 200 de retorno"
end

Quando("eu fizer uma requisicao POST") do
  response = HTTParty.post("https://jsonplaceholder.typicode.com/users/",
  :body => {'id' => '11',
            'name' => 'Fabio Teste',
            'username' => 'froveroto'}.to_json,
  :headers => {'Content-Type' => 'application/json'})
  puts response.code
end

Entao("receberei a resposta POST") do
  expect(response.code).to eq 201
  puts "Validado codigo 201 de retorno"
  puts response.body
end

Quando("eu fizer uma requisicao PUT") do
  response = HTTParty.put("https://jsonplaceholder.typicode.com/comments/101",
    :body => {'title' => 'Teste Alteracao',
              'body' => 'Fabio Teste Alterado',
              'userId' => '1'}.to_json,
    :headers => {'Content-Type' => 'application/json'})
    puts response.code
end

Entao("receberei a resposta PUT") do
  expect(response.code).to eq 200
  puts "Validado codigo 200 de retorno"
  puts response.body
end

Quando("eu fizer uma requisicao DELETE") do
  response = HTTParty.delete("https://jsonplaceholder.typicode.com/users/11")
  puts response.code
end

Entao("receberei a resposta DELETE") do
  expect(response.code).to eq 200
  puts "Validado codigo 200 de retorno"
  puts response.body
end

