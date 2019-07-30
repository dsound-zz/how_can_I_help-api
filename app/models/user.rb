class User < ApplicationRecord
    has_secure_password 
    
    has_many :user_opportunities 
    has_many :opportunities, through: :user_opportunities
    
    validates_presence_of :first_name, :last_name, :email, :password_digest
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates_length_of :password_digest, in: 6..20 
    validates_uniqueness_of :email 
end
