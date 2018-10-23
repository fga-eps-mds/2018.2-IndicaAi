class CreateUserRates < ActiveRecord::Migration[5.1]
  def change
    create_table :user_rates do |t|
      t.integer :rating

      t.timestamps
    end
  end
end
