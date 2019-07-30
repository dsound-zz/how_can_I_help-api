class Location < ApplicationRecord
    has_many :opportunity_locations
    has_many :opportunities, through: :opportunity_locations

    validates_presence_of :address, :city, :state, :zipcode
end
