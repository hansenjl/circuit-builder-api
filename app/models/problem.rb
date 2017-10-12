class Problem < ApplicationRecord
  has_many :loops
  accepts_nested_attributes_for :loops
end
