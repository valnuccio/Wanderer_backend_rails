class Tour < ApplicationRecord
    belongs_to :guide
    has_many :stops
    
end