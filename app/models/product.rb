class Product < ApplicationRecord
  belongs_to :order

  validates :name, presence: true
end
