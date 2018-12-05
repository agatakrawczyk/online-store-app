class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items
	
	def quantity_of_items
		line_items.sum(:quantity)
	end 
end
