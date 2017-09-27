class FixTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :problems, :type, :category
  end
end
