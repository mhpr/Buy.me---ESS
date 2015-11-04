class Funcionario < ActiveRecord::Base
	has_many :produtos
	
	validates :cpf, presence: true
end
