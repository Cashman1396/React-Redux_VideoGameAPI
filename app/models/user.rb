class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :video_games
    

    validates :username, :email, presence: true, uniqueness: true
     
end
