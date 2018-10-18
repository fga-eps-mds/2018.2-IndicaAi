class AddColumnsToLocals < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :latitude, :float, precision: 11, scale: 8
    add_column :locals, :longitude, :float, precision: 11, scale: 8
    add_column :locals, :address, :string
    add_column :locals, :telephone, :string
  end
end
