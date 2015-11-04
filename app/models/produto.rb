class Produto < ActiveRecord::Base
	has_many :tags
	has_many :compras
	belongs_to :funcinario
	
	validates :preco, presence: true
end
