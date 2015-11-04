class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :cpf

      t.timestamps null: false
    end
  end
end
