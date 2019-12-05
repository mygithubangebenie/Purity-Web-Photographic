class Comment < ApplicationRecord
    belongs_to :photographer
    validates :name, :email, presence: true
end
