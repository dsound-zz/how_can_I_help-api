class Category < ApplicationRecord
    has_many :opportunity_categories
    has_many :opportunities, through: :opportunity_categories 
end
