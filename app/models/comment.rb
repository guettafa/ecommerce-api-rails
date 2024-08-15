class Comment < ApplicationRecord
  validates_presence_of :content

  belongs_to :ad
  belongs_to :customer
end
