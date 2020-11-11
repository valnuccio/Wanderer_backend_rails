class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :tour
    has_many :favorites
    
end
