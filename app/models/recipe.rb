class Recipe < ApplicationRecord

  has_one_attached :image
  has_many :comments
  has_many :bookmarks
  has_many :materials, inverse_of: :recipe
  has_many :steps
  has_many :seasonings
  has_many :tags
  belongs_to :customer
  
  accepts_nested_attributes_for :materials, allow_destroy: true, reject_if: :all_blank
end
