# Description of Places Class
class Local < ApplicationRecord
  has_many :local_ratings
  validates :name, presence: true, length: { minimum: 2 }

  def self.find_by_name(params)
    Local.where('upper(name) like ?', "%#{params.upcase}%")
  end

  def self.find_local_ratings(local_id)
    Local.find(local_id).local_ratings
  end

  def self.rate_a_place(local_name, user, rate)
    existe = 

  end 

  def self.validate_local_existence(local_name)
    Local.exists?('upper(name) like ?' , "%#{params.upcase}%")  
  end
end
