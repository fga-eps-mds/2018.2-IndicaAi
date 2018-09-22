class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title
      t.string :visited_by
      t.string :address
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
