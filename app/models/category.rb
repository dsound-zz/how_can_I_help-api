class Category < ApplicationRecord
    has_many :categories, optional: true 
end
