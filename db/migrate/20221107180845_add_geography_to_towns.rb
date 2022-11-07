class AddGeographyToTowns < ActiveRecord::Migration[7.0]
  def change
    add_column :towns, :geography, :string
  end
end
