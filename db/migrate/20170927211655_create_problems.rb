class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.integer :difficulty
      t.string :type
      t.integer :tot_voltage
      t.integer :tot_resistance
      t.integer :tot_current

      t.timestamps
    end
  end
end
