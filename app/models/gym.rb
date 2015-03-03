class Gym < ActiveRecord::Base

	has_many :reviews
	geocoded_by :address
	after_validation :geocode 
	mount_uploader :logo, LogoUploader

end
