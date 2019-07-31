require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { build(:category)}

  describe "check associations for #category" do  
    it { should have_many(:opportunities)} 
  end 
  
end
