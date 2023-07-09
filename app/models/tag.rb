class Tag < ApplicationRecord
  belongs_to :recipe

  def self.ransackable_attributes(auth_object = nil)
    ["name"]
  end

end
