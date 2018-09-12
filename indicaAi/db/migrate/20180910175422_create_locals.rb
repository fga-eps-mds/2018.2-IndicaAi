class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.string :name
      t.text :description
      t.float :RatingRate

      t.timestamps
    end
  end
end
