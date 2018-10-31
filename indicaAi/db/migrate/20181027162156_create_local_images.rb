class CreateLocalImages < ActiveRecord::Migration[5.1]
  def change
    create_table :local_images do |t|
      t.text :image
      t.references :local, foreign_key: true
      t.timestamps
    end
  end
end
