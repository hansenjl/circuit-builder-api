class CreateLoops < ActiveRecord::Migration[5.1]
  def change
    create_table :loops do |t|
      t.integer :quantity
      t.integer :problem_id
      t.integer :l_current
      t.integer :l_resistance
      t.integer :l_voltage

      t.timestamps
    end
  end
end
