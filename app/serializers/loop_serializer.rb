class LoopSerializer < ActiveModel::Serializer
  attributes :id, :l_voltage, :l_resistance, :l_current
  has_many :resistors
  belongs_to :problem
end
