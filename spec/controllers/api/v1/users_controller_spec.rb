require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
    let(:users) { build(:users)}

    describe "check routes for #users" do   
        it { should route(:get, 'api/v1/users').to(action: :index) } 
    end 

    
end
