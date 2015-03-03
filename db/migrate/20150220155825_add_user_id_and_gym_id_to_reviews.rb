class AddUserIdAndGymIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :user, index: true
    add_reference :reviews, :gym, index: true
  end
end
