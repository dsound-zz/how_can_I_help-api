class SodaApi < ApplicationRecord

    
    
    def get_api 
        client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => "WfoD6Oo0aLuRwT6FHsu2l9RpX"})
        results = client.get("n4ac-3636", :$limit => 5000)

        puts "Got #{results.count} results. Dumping first results:"
        
        results.first.each do |k, v|
            puts "#{k}: #{v}"
        end
    end 
end
