require 'rails_helper'

RSpec.describe Api::V1::CategoriesController, type: :controller do
      let(:category) { build(:category)}

    describe "check routes for #category" do   
        it { should route(:get, 'api/v1/categories').to(action: :index) } 
    end 
end
