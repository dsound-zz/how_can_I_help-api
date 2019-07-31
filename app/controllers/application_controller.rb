class ApplicationController < ActionController::API
    include JWTSessions::RailsAuthorization
    rescue_from JWTSessions::Unauthorized, with :not_authorized
   
    ####### Auth pipeline #########

end
