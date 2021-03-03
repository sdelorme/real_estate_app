class ChangeYearDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :homes, :year_built, :string
  end
end
