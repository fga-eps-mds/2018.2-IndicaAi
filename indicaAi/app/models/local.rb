class Local < ApplicationRecord
  def self.findByName(params)
    locals = Local.where('upper(name) = ?', params.upcase)
    return locals
  end
end
