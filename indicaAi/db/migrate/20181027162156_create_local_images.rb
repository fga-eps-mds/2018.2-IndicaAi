class CreateLocalImages < ActiveRecord::Migration[5.1]
  def change
    create_table :local_images do |t|
      t.text :image
      
      t.timestamps
    end
  end
end
