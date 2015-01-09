json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cpf, :nome, :email, :celular, :data_nascimento
  json.url cliente_url(cliente, format: :json)
end
