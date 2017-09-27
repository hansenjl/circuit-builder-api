class Loop < ApplicationRecord
  belongs_to :problem
  has_many :resistors
end
