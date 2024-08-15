class Customer < ApplicationRecord
  validates_presence_of :username, :email

  has_many :ads
  has_many :comments
end
