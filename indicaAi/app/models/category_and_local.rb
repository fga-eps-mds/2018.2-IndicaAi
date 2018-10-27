# model to relationship between category and local
class CategoryAndLocal < ApplicationRecord
  belongs_to :category
  belongs_to :local
  validates_presence_of :category, :local
  validates_uniqueness_of :category_id, scope: :local_id
end
