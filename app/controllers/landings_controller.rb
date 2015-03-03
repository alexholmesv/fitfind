class LandingsController < ApplicationController

	

  def index
  	@gyms = Gym.all
	@hash = Gmaps4rails.build_markers(@gyms) do |gym, marker|
 		marker.lat gym.latitude
 		marker.lng gym.longitude
  	end
  end


  

end
