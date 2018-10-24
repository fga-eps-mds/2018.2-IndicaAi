class CreateImageLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :image_locals do |t|
      t.references :local, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
