require 'rails_helper'

RSpec.describe Api::V1::LocationsController, type: :controller do
    let(:location) { build(:location)}

    describe "check routes for #location" do   
        it { should route(:get, 'api/v1/locations').to(action: :index) } 
    end 
end
