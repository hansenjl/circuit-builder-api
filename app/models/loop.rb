class Loop < ApplicationRecord
  belong_to :problem
  has_many :resistors
end
