class Opportunity < ApplicationRecord
    has_many :user_opportunities 
    has_many :users, through: :user_opportunities
    belongs_to :category 


    validates_presence_of :title 
end
