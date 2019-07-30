class Api::V1::OpportunitiesController < ApplicationController
    before_action :find_opportunities, only: [:show, :update, :destroy]
    
    def index 
        @opportunities = SodaApi.opportunities_api 
        render json: @opportunities, status: :ok 
    end

    def create 
        @opportunity = Opportunity.new(opportunity_params)
        if @opportunity.save 
            render json: @opportunity, status: :ok 
        else    
            render json: { errors: @opportuny.erros.full_messages }, status: :unprocessible_entity
        end 
    end 

    def update 
        @opportunity = Opportunity.update(opportunity_params)
        if @opportunity.save 
                 render json: @opportunity, status: :ok 
        else    
            render json: { errors: @opportuny.erros.full_messages }, status: :unprocessible_entity
        end 
    end 
    
    def destroy 
        @opportunity.delete 
        render json: "Opportunity deleted" 
    end 

    
    private 

    def opportunity_params 
        params.permit(:title, :hits, :summary, :priority, :organization, :url, :start_time, :hours, :created_date, 
        :end_date, :status, :community_board, :community_council, :category_id)
    end 

    def find_opportunities 
        @opportunity = Opportunity.find(params[:id])
    end 

end
