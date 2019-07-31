class SodaApi < ApplicationRecord
    include HTTParty 
    
    

    def self.get_response 
        client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => Rails.application.credentials.dig(:soda_nyc)})
        response = HTTParty.get("https://data.cityofnewyork.us/resource/n4ac-3636.json") 
    end

    def self.parse_date(string)
     return nil unless string
     DateTime.parse(string)
    end
    
    def self.get_opportunities
        
        result = get_response.map do |r| 
            {
            title: r['title'],
            hits: r['hits'],
            summary: r['summary'],
            organization: r['org_title'],
            url: r['display_url'],
            # start_time: DateTime.parse(r['start_time']),
            hours: r['hours'],
            created_date: parse_date(r['created_date']),
            end_date: parse_date(r['end_date']),
            status: r['status']
            }
        end 
        result  
    end 

    def self.get_locations 
        
        result = get_response.map do |r| 
            {
            address: r['locality_address'],
            city: r['locality_city'],
            state: r['locality_state'],
            zipcode: r['locality_zip'],
            bourogh: r['borough'],
            longitude: r['longitude'],
            latitude: r['latitude']
            }
        end 
        result
    end 

    def self.get_categories 
        result = get_response.map do |r|
            byebug 
        end 
    end


end
