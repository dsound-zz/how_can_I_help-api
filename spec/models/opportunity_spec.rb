require 'rails_helper'

RSpec.describe Opportunity, type: :model do
  let(:opportunity) { build(:opportunity) }

  describe "check associations for #opportunity" do  
    it { should have_many(:users).through(:user_opportunities)}  
    it { should have_many(:categories).through(:opportunity_categories)}
    it { should have_many(:locations).through(:opportunity_locations)}
    
  end 

  describe "check validations for @opportunity" do  
    it { should validate_presence_of(:title)}  
  end 

end
