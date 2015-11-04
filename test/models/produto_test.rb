require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Requer valores" do
    produto = Produto.new
    assert_not produto.save, "Produto salvo sem valores"
  end
  
  test "Produto salva com valores" do
    produto = Produto.new
    produto.preco = 59,90
    
    assert produto.save, "Produto não salvo por falta de valores"
  end
  
  test "Salva funionario criador" do
    produto = Produto.new
    produto.preco = 59,90
    
     # Funcionario criador
    funcionario = Funcionario.new
    funcionario.cpf = "10987654321"
    funcionario.save
    
    produto.funcionario_id = funcionario.id
    produto.save
    
    assert_equal funcionario.id, Produto.find_by_id(produto.id).funcionario_id, "Funcionario nao achado"
  end
  
  test "Salva tags" do
    produto = Produto.new
    produto.preco = 59.90
    produto.save
    
    tag_1 = Tag.new
    tag_1.produto_id = produto.id
    tag_1.nome = "Perfumaria"
    
    tag_2 = Tag.new
    tag_2.produto_id = produto.id
    tag_2.nome = "Masculino"
    
    tag_1.save
    tag_2.save
    
    assert_equal tag_1.nome, Produto.find_by_id(produto.id).tags.first.nome, "Tag 1 nao encontrada em produto"
    assert_equal 2, Produto.find_by_id(produto.id).tags.count, "Nao ha duas tags"
  end
end
