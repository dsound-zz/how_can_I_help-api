class Api::V1::ApiOpportunitiesController < ApplicationController

     def index 
        @api_opportunities = SodaApi.get_opportunities 
        render json: @api_opportunities, status: :ok 
    end

    def show
        @api_opportunity = SodaApi.get_opportunities
        render json: @api_opportunity, status: :ok 
    end 
end
