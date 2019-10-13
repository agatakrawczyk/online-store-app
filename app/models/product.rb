class Product < ApplicationRecord
  has_many :line_items 
  validates :name, presence: true
  
  # active storage
  has_one_attached :image

  
  # paperclip
  # has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
end