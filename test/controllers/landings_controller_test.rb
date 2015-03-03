require 'test_helper'

class LandingsControllerTest < ActionController::TestCase
	include Devise::TestHelpers
	fixtures :all


  test "should get index" do
  	@user = users(:one)
  	sign_in @user
    get :index
    assert_response :success
  end

  test "not authenticated should get redirect" do
  	get :index
  	assert_response :success
  end


end
