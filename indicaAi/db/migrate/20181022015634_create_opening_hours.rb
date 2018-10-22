class CreateOpeningHours < ActiveRecord::Migration[5.1]
  def change
    create_table :opening_hours do |t|
      t.references :local
      t.integer :day
      t.time :opens
      t.time :closes

      t.timestamps
    end
  end
end
