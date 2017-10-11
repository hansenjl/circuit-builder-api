class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :difficulty, :category, :likes, :tot_voltage, :tot_resistance, :tot_current
  has_many :loops
end
