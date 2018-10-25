class AddImageToLocals < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :image, :text
  end
end
