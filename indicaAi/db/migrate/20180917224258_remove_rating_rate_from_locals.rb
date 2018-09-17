class RemoveRatingRateFromLocals < ActiveRecord::Migration[5.1]
  def change
    remove_column :locals, :RatingRate, :float
  end
end
