class Review < ActiveRecord::Base
	belongs_to :compra
	
	before_create :set_datetime
	
	def set_datetime
		self.sent_on = DateTime.now
	end
end
