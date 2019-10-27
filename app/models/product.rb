class Product < ApplicationRecord
  has_many :line_items 
  validates :name, presence: true
  
  # active storage
  has_one_attached :image

  def thumbnail
    return self.image.variant(resize: "200x200!").processed
  end 
  
  def large_thumbnail
    return self.image.variant(resize: "500x400!").processed
  end 
  
end