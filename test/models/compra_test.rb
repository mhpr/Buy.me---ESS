require 'test_helper'

class CompraTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Compra eh salva com cliente e produto" do
    compra = Compra.new
   
    # Produto comprado
    produto = Produto.new
    produto.preco = 14.90
    produto.save
   
    # Cliente comprador
    cliente = Cliente.new
    cliente.nome = "Gabriel"
    cliente.cpf = "12345678910"
    cliente.endereco = "Rua da Moeda"
    cliente.telefone = "5581999998898"
    cliente.save
    
    compra.produto_id = produto.id
    compra.cliente_cpf = cliente.cpf
    assert compra.save, "Compra não salva"
    assert_equal Compra.find_by_cliente_cpf(cliente.cpf).produto.id, produto.id, "Cliente e Produto nao encontrados"
  end
end
