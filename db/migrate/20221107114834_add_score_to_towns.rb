class AddScoreToTowns < ActiveRecord::Migration[7.0]
  def change
    add_column :towns, :score, :integer
  end
end
