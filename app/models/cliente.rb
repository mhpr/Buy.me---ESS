class Cliente < ActiveRecord::Base
	has_many :compras
	
	validates :nome, presence: true
	validates :cpf, presence: true
	
end
