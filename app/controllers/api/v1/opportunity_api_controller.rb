class Api::V1::OpportunityApiController < ApplicationController
      
    def index 
        @opportunities = SodaApi.get_opportunities 
        render json: @opportunities, status: :ok 
    end

    def show
        @opportunity = Opportunity.find(params[:opportunity_id])
        render json: @opportunity, status: :ok 
    end 
end
