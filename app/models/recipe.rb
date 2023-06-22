class Recipe < ApplicationRecord

  has_one_attached :image
  has_many :comments
  has_many :bookmarks
  has_many :materials, inverse_of: :recipe
  has_many :steps, inverse_of: :recipe
  has_many :seasonings, inverse_of: :recipe
  has_many :tags, inverse_of: :recipe
  belongs_to :customer
  
  accepts_nested_attributes_for :materials, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :seasonings, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :steps, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :tags, allow_destroy: true, reject_if: :all_blank
end
