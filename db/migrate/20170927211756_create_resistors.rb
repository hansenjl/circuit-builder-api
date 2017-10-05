class CreateResistors < ActiveRecord::Migration[5.1]
  def change
    create_table :resistors do |t|
      t.decimal :voltage, :precision => 8, :scale => 2
      t.decimal :current, :precision => 8, :scale => 2
      t.decimal :resistance, :precision => 8, :scale => 2
      t.integer :loop_id

      t.timestamps
    end
  end
end
