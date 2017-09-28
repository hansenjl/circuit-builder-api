class Loop < ApplicationRecord
  belongs_to :problem
  has_many :resistors
  accepts_nested_attributes_for :resistors
end
