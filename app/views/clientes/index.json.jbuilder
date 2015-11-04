json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :endereco, :telefone, :cpf
  json.url cliente_url(cliente, format: :json)
end
