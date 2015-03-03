class GymsController < InheritedResources::Base
  before_action :set_gym, only: [:show]

  def index
  	@gyms = Gym.all
	@hash = Gmaps4rails.build_markers(@gyms) do |gym, marker|
 		marker.lat gym.latitude
 		marker.lng gym.longitude
 		marker.infowindow rich_data(gym)
 	end
 end

def show
  @review = Review.new gym:@gym, user: current_user
  @reviews = @gym.reviews
end


  private

  	def rich_data(gym)
  		"""
  		<div class='well'>
  			<img style='width:100px' src=#{gym.logo}/>
        <h2>
  			#{gym.name}
  			</h2>
  			<p>
  			#{gym.description.html_safe}
  			</p>
        <a class='btn btn-info linkbutton' href='#{gym_path(gym)}'>Más Información</a>
  		</div>
		"""
  	end

    def gym_params
      params.require(:gym).permit(:name, :description, :latitude, :longitude, :address, :comuna, :logo, :phone, :email, :website)
    end

    def set_gym
      @gym = Gym.find(params[:id])
    end

end


