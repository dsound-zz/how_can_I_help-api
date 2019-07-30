class OpportunityCategory < ApplicationRecord
    belongs_to :opportunity 
    belongs_to :category 
end
