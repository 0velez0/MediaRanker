class Work < ApplicationRecord

  #TODO double-check these validations
  has_many :votes
  validates :title, presence: true
  validates :category, presence: true

end