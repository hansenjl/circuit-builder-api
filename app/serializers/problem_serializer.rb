class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :difficulty, :category, :tot_voltage, :tot_resistance, :tot_current
  has_many :loops
end
