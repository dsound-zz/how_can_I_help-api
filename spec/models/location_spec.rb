require 'rails_helper'

RSpec.describe Location, type: :model do
  let(:location) { build(:locatoin)}

  describe "check associations for #location" do 
    it { should have_many(:opportunities).through(:opportunity_locations)}   
  end 

  describe "check validations for #location" do    
    it { should validate_presence_of(:address)}
    it { should validate_presence_of(:city)}
    it { should validate_presence_of(:state)}
    it { should validate_presence_of(:zipcode)}
  end  

  describe "check valid zipcode for #location" do     
  end 

end
