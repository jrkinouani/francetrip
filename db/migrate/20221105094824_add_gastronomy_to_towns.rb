class AddGastronomyToTowns < ActiveRecord::Migration[7.0]
  def change
    add_column :towns, :gastronomy, :integer
  end
end
