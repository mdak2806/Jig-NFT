class Work < ApplicationRecord
    belongs_to :user, optional: true
    has_many :properties
    has_and_belongs_to_many :genres
    has_many :bids

    def self.search_by(search_term)
       Work.joins(:properties).where("rairty ILIKE :search_term", search_term: "%#{search_term.downcase}")
      end

    def self.search_currency_by(search_term)
        Work.where("blockchain ILIKE :search_term", search_term: "%#{search_term.downcase}")
    end
    # def self.search_price_by(search_term)
    #     Work.where("price ILIKE :search_term", search_term: "%#{search_term.downcase}")
    # end
 


end
