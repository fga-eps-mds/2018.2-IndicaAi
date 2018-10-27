class CreateOpeningHours < ActiveRecord::Migration[5.1]
  def change
    create_table :opening_hours do |t|
      t.references :local
      t.integer :day
      t.string :opens
      t.string :closes

      t.timestamps
    end
  end
end
