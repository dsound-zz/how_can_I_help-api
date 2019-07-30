require 'rails_helper'

RSpec.describe Api::V1::OpportunitiesController, type: :controller do
    let(:opportunity) { build(:opportunity)}

    describe "check routes for #opportunity" do   
        it { should route(:get, 'api/v1/opportunities').to(action: :index) } 
    end 
end
