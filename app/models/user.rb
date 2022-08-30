class User < ApplicationRecord
    has_many :works
    has_many :bids
    has_secure_password

    validates :name, length: {minimum: 2}
    #Dont allow a User.create to proceed when the 
    validates :email, presence: true, uniqueness: true
    # has_many :properties, through: 'works'
end
