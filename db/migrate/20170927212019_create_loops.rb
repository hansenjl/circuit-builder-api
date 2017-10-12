class CreateLoops < ActiveRecord::Migration[5.1]
  def change
    create_table :loops do |t|
      t.integer :problem_id
      t.decimal :l_current, :precision => 8, :scale => 2
      t.decimal :l_resistance, :precision => 8, :scale => 2
      t.decimal :l_voltage, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
