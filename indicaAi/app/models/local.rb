# Description of Places Class
class Local < ApplicationRecord
  def self.find_by_name(params)
    Local.where('upper(name) = ?', params.upcase)
  end
end
