require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build{:user} }

  describe "check associations for #user" do  
    it { should have_many(:opportunities).through(:user_opportunities) } 
  end 

  describe "#user validations" do
    it { should validate_presence_of(:first_name)}  
    it { should validate_presence_of(:last_name)} 
    it { should validate_presecne_of(:username)}
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password_digest)}
  end 

  describe "#user email format" do 
    it { should allow_value("demian@gmail.com").for(:email)}
    it { should_not allow_value("fsldfjsd").for(:email)} 
    it { should_not allow_value("demian@gmail").for(:email)}
  end

  describe "#user validate uniqueness" do 
    it { should validate_uniqueness_of(:email)}   
  end 
  
  # describe "#user password_digest length" do   
  #   it { should validate_length_of(:email_digest).is_at_least(6).is_at_most(20)}
  #   it { should_not validate_length_of(:email_digest).is_at_most(3)}
  #   it { should_not validate_length_of(:email_digest).is_at_least(50)}
  # end
end
