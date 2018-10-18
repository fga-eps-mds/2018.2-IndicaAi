class AddCategoryFromLocals < ActiveRecord::Migration[5.1]
  def change
    add_reference :locals, :category, foreign_key: true, index: true
  end
end
