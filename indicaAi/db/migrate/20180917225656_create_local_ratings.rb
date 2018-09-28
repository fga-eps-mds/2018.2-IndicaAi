class CreateLocalRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :local_ratings do |t|
      t.integer :value
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
