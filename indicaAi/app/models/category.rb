class Category < ApplicationRecord
    has_many :locals
    validates :name, presence: true, length: { minimum: 2 }
end
