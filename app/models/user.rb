class User < ApplicationRecord
    has_secure_password

    has_many :locations
    has_many :forecasts, through: :locations

    validates :username, :email, presence: true
    validates :username, uniqueness: true
    validates :email, uniqueness: true

end
