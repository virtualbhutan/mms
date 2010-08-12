require 'test_helper'

class MediaPublishersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_publishers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_publisher" do
    assert_difference('MediaPublisher.count') do
      post :create, :media_publisher => { }
    end

    assert_redirected_to media_publisher_path(assigns(:media_publisher))
  end

  test "should show media_publisher" do
    get :show, :id => media_publishers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => media_publishers(:one).to_param
    assert_response :success
  end

  test "should update media_publisher" do
    put :update, :id => media_publishers(:one).to_param, :media_publisher => { }
    assert_redirected_to media_publisher_path(assigns(:media_publisher))
  end

  test "should destroy media_publisher" do
    assert_difference('MediaPublisher.count', -1) do
      delete :destroy, :id => media_publishers(:one).to_param
    end

    assert_redirected_to media_publishers_path
  end
end
