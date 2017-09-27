class CreateResistors < ActiveRecord::Migration[5.1]
  def change
    create_table :resistors do |t|
      t.integer :voltage
      t.integer :current
      t.integer :resistance
      t.integer :loop_id

      t.timestamps
    end
  end
end
