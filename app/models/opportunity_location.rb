class OpportunityLocation < ApplicationRecord
    belongs_to :opportunity 
    belongs_to :location 
end
