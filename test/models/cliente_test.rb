require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Requer valores" do
    cliente = Cliente.new
    assert_not cliente.save, "Salvou cliente sem valores"
  end
  
  test "Salvou cliente com valores" do
    cliente = Cliente.new
    cliente.nome = "Gabriel"
    cliente.cpf = "12345678910"
    cliente.endereco = "Rua da Moeda"
    cliente.telefone = "5581999998898"
    assert cliente.save, "Cliente salvo com sucesso"
  end
end
