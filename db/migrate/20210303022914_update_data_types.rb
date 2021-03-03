class UpdateDataTypes < ActiveRecord::Migration[6.1]
  def change
    change_column :homes, :bathrooms, :decimal, precision: 3, scale: 1
    change_column :homes, :price, :decimal, precision: 15, scale: 2
  end
end
