class ReviewsController < InheritedResources::Base

	def index
		@reviews = Review.all 
		@recent_reviews = Review.order('created_at desc').includes(:gym).limit(5)
	end 


	def create
		@review = Review.new(review_params)
		@gym = Gym.find params[:gym_id]
		@review.gym = @gym
		@review.user = current_user
		if @review.save
			flash[:notice] = "Comentario creado"
		else
			flash[:notice] = "Atención: comentario no pudo ser creado"
		end
		redirect_to @gym
	end

	def like
		@review = Review.find(params[:id])
		current_user.likes @review

		if @review.vote_registered?
			@flag_increment = 1
		else 
			@flag_increment = 0
		end
		
		respond_to do |f|
			f.js
		end
	end


	def destroy
  		@review = Review.find params[:id]
  		@review.destroy
  		redirect_to gym_path(@review.gym)
 	end

 	def upvote
  		@review = Review.find(params[:id])
  		@link.upvote_by current_user
  		redirect_to reviews_path
	end

  private

    def review_params
      params.require(:review).permit(:title, :author, :description)
    end
end

