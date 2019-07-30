require 'rails_helper'

RSpec.describe OpportunityCategory, type: :model do
  let(:opportunity_categories) { build(:opportunity_categories)}

  describe "check associations for #opportunity_categories" do 
    it { should belong_to(:category)}   
    it { should belong_to(:opportunity)}
  end 
end
