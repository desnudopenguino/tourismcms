require 'test_helper'

class ArconesControllerTest < ActionController::TestCase
  setup do
    @arcone = arcones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arcones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arcone" do
    assert_difference('Arcone.count') do
      post :create, arcone: { attraction_tour_id: @arcone.attraction_tour_id, end: @arcone.end, start: @arcone.start }
    end

    assert_redirected_to arcone_path(assigns(:arcone))
  end

  test "should show arcone" do
    get :show, id: @arcone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arcone
    assert_response :success
  end

  test "should update arcone" do
    put :update, id: @arcone, arcone: { attraction_tour_id: @arcone.attraction_tour_id, end: @arcone.end, start: @arcone.start }
    assert_redirected_to arcone_path(assigns(:arcone))
  end

  test "should destroy arcone" do
    assert_difference('Arcone.count', -1) do
      delete :destroy, id: @arcone
    end

    assert_redirected_to arcones_path
  end
end
