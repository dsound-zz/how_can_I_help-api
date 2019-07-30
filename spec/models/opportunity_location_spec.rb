require 'rails_helper'

RSpec.describe OpportunityLocation, type: :model do
  let(:opportunity_locations) { build(:opportunity_locations)}

  describe "check associations for #opportunity_locations" do 
    it { should belong_to(:locations)}   
    it { should belong_to(:opportunity)}
  end 
end
