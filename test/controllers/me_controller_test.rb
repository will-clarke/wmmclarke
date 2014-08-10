require 'test_helper'

class MeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

end
