class Problem < ApplicationRecord
  has_many :teacher_problems
  has_many :teachers, through: :teacher_problems
  has_many :loops
end
