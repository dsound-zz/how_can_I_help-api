class Opportunity < ApplicationRecord
    has_many :user_opportunities 
    has_many :users, through: :user_opportunities
    has_many :opportunity_locations 
    has_many :locations, through: :opportunity_locations
    has_many :opportunity_categories
    has_many :categories, through: :opportunity_categories

    validates_presence_of :title 
end
