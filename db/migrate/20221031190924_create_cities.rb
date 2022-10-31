class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :region
      t.string :state
      t.integer :safety
      t.integer :cost
      t.integer :sightseeing
      t.integer :vibe
      t.integer :culture

      t.timestamps
    end
  end
end
