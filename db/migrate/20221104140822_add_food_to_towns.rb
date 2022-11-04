class AddFoodToTowns < ActiveRecord::Migration[7.0]
  def change
    add_column :towns, :food, :integer
  end
end
