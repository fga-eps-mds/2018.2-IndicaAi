class AddPublicityTolocals < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :publicity, :string, default: 'false'
  end
end
