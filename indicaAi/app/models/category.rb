# model of categories
class Category < ApplicationRecord
  has_many :category_and_locals
  has_many :locals, through: :category_and_locals
  validates :name, presence: true, length: { minimum: 2 }

  def self.find_by_name(params)
    Category.where('upper(name) like ?', "%#{params.upcase}%")
  end
end
