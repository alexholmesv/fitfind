class Gym < ActiveRecord::Base

	has_many :reviews
	has_one :neighborhood
	geocoded_by :address
	after_validation :geocode 
	mount_uploader :logo, LogoUploader
	acts_as_taggable

  # def customer?
  #   Gym.customer = true
  # end

end
