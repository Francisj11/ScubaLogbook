require 'test_helper'

class DivesControllerTest < ActionController::TestCase
  setup do
    @dife = dives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dife" do
    assert_difference('Dife.count') do
      post :create, dife: { date: @dife.date, depth: @dife.depth, dive_buddy: @dife.dive_buddy, dive_type: @dife.dive_type, duration: @dife.duration, image_URL: @dife.image_URL, location: @dife.location, rating: @dife.rating, time: @dife.time }
    end

    assert_redirected_to dife_path(assigns(:dife))
  end

  test "should show dife" do
    get :show, id: @dife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dife
    assert_response :success
  end

  test "should update dife" do
    patch :update, id: @dife, dife: { date: @dife.date, depth: @dife.depth, dive_buddy: @dife.dive_buddy, dive_type: @dife.dive_type, duration: @dife.duration, image_URL: @dife.image_URL, location: @dife.location, rating: @dife.rating, time: @dife.time }
    assert_redirected_to dife_path(assigns(:dife))
  end

  test "should destroy dife" do
    assert_difference('Dife.count', -1) do
      delete :destroy, id: @dife
    end

    assert_redirected_to dives_path
  end
end
