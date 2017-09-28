class Teacher < ApplicationRecord
  has_secure_password
  has_many :teacher_problems
  has_many :problems, through: :teacher_problems
  validates :email, presence: true, uniqueness: true
end
