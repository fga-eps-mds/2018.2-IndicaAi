class CreateFavoriteLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_locals do |t|
      t.string :label
      t.text :body
      t.references :local, foreign_key: true
      t.references :user_identifier, foreign_key: true

      t.timestamps
    end
  end
end
