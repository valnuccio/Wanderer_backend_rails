class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, :password,:first_name, :last_name, :location, presence: true


end
