class RemoveColumnFromFavoriteLocals < ActiveRecord::Migration[5.1]
  def change
    remove_column :favorite_locals, :label
    remove_column :favorite_locals, :body
  end
end
