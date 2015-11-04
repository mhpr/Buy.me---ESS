class Compra < ActiveRecord::Base
	belongs_to :produto
	belongs_to :cliente
	has_many :reviews
end
