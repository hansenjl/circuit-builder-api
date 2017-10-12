class LoopSerializer < ActiveModel::Serializer
  attributes :id, :l_voltage, :l_resistance, :l_current, :resistors
  has_many :resistors
  belongs_to :problem
end
