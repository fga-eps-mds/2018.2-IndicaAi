# Description of Places Class
class Local < ApplicationRecord
  has_many :local_ratings
  has_many :opening_hours
  has_many :category_and_locals
  has_many :categories, through: :category_and_locals
  has_many :local_images
  validates :name, presence: true, length: { minimum: 2 }
  validates :publicity, inclusion: { in: %w[true false] }
  validates :latitude, presence: true, numericality: {
    greater_than_or_equal: 0, less_than_or_equal: 100
  }
  validates :longitude, presence: true, numericality: {
    greater_than_or_equal: 0, less_than_or_equal: 100
  }
  validates :address, allow_nil: true, length: { minimum: 10 }
  validates :telephone, allow_nil: true, length: { minimum: 8 }

  def self.find_by_name(params)
    Local.where('upper(name) like ?', "%#{params.upcase}%")
  end

  def self.find_local_ratings(local_id)
    Local.find(local_id).local_ratings
  end
end
