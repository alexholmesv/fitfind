class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :gym
	acts_as_votable
	validates :user, :presence => true
	validates :gym, :presence => true
end
