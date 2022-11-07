class AddCategoryToTowns < ActiveRecord::Migration[7.0]
  def change
    add_column :towns, :category, :string
  end
end
