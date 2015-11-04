require 'test_helper'

class FuncionarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Requer valores" do
    funcionario = Funcionario.new
    assert_not funcionario.save, "Salvou funcionario sem valores"
  end
  
  test "Salvou funcionario com valores" do
    funcionario = Funcionario.new
    funcionario.cpf = "12345678910"
    assert funcionario.save, "Funcionario salvo com sucesso"
  end
end
