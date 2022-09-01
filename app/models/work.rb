class Work < ApplicationRecord
    belongs_to :user, optional: true
    has_many :properties
    has_and_belongs_to_many :genres
    has_many :bids

    def self.search_by(search_term)
       Work.joins(:properties).where("trait ILIKE :search_term", search_term: "%#{search_term.downcase}")
      end
end
