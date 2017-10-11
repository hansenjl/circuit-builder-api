class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.integer :difficulty
      t.string :category
      t.decimal :tot_voltage, :precision => 8, :scale => 2
      t.decimal :tot_resistance, :precision => 8, :scale => 2
      t.decimal :tot_current, :precision => 8, :scale => 2
      t.integer :likes

      t.timestamps
    end
  end
end
