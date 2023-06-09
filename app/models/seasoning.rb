class Seasoning < ApplicationRecord
  belongs_to :recipes
  belongs_to :seasoning_items
end
