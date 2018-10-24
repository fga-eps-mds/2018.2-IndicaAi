class CreateCategoryAndLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :category_and_locals do |t|
      t.references :category, foreign_key: true
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
