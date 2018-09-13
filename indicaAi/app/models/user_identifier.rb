class UserIdentifier < ApplicationRecord
	validates :userId, presence: true
end
