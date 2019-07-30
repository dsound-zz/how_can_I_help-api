class SodaApi < ApplicationRecord
    include HTTParty 
    
   
    
    def self.opportunities_api 
        client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => "WfoD6Oo0aLuRwT6FHsu2l9RpX"})
        response = HTTParty.get("https://data.cityofnewyork.us/resource/n4ac-3636.json") 
        result = response.map do |r| 
            # created_date = DateTime.parse(r['created_date'])
            # end_date = DateTime.parse(r['end_date'])
            {
            title: r['title'],
            hits: r['hits'],
            summary: r['summary'],
            organization: r['org_title'],
            url: r['display_url'],
            # start_time: DateTime.parse(r['start_time']),
            hours: r['hours'],
            # created_date: DateTime.parse(created_date),
            # end_date: DateTime.parse(end_date),
            status: r['status'],
            }
        end 
        result  
    end 

    def location_api 
        client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => "WfoD6Oo0aLuRwT6FHsu2l9RpX"})
        response = HTTParty.get("https://data.cityofnewyork.us/resource/n4ac-3636.json") 
        result = response.map do |r| 
            address: r['locality_address'],
            city: r['locality_city'],
            state: r['locality_state],
            
        end 
    end 
end
