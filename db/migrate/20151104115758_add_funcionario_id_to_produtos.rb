class AddFuncionarioIdToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :funcionario_id, :integer
    add_index  :produtos, :funcionario_id
  end
end
