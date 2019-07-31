class OpportunityApiSerializer < ActiveModel::Serializer
    attributes :id, :title, :hits, :summary, :priority, :organization, :url,
      :hours, :status, :address, :city, :state, :zipcode, :borough, :latitude, :longitude

end
