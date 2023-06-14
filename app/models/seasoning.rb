class Seasoning < ApplicationRecord
  belongs_to :recipe
  belongs_to :seasoning_item
end
