class Ad < ApplicationRecord
  validates_presence_of :title

  has_many :comments
  belongs_to :customer
end
