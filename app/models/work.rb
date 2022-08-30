class Work < ApplicationRecord
    belongs_to :user, optional: true
    has_many :properties
    has_and_belongs_to_many :genres
    has_many :bids
end
