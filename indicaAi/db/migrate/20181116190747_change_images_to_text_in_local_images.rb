class ChangeImagesToTextInLocalImages < ActiveRecord::Migration[5.1]
  def change
    change_column :local_images, :image, :text, :limit => 50000
  end
end
