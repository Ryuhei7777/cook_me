class Recipe < ApplicationRecord

  has_one_attached :image
  has_many :comments
  has_many :bookmarks
  has_many :materials
  has_many :steps
  has_many :seasonings
  has_many :tags
  belongs_to :customers

end
