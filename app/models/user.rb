class User < ApplicationRecord
  has_many :orders
  has_many :carts
  has_one :cart

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates_confirmation_of :password

end
