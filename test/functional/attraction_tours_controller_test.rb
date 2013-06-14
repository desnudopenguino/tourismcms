require 'test_helper'

class AttractionToursControllerTest < ActionController::TestCase
  setup do
    @attraction_tour = attraction_tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attraction_tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attraction_tour" do
    assert_difference('AttractionTour.count') do
      post :create, attraction_tour: { attraction_id: @attraction_tour.attraction_id, description: @attraction_tour.description, order: @attraction_tour.order, radius: @attraction_tour.radius, tour_id: @attraction_tour.tour_id }
    end

    assert_redirected_to attraction_tour_path(assigns(:attraction_tour))
  end

  test "should show attraction_tour" do
    get :show, id: @attraction_tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attraction_tour
    assert_response :success
  end

  test "should update attraction_tour" do
    put :update, id: @attraction_tour, attraction_tour: { attraction_id: @attraction_tour.attraction_id, description: @attraction_tour.description, order: @attraction_tour.order, radius: @attraction_tour.radius, tour_id: @attraction_tour.tour_id }
    assert_redirected_to attraction_tour_path(assigns(:attraction_tour))
  end

  test "should destroy attraction_tour" do
    assert_difference('AttractionTour.count', -1) do
      delete :destroy, id: @attraction_tour
    end

    assert_redirected_to attraction_tours_path
  end
end
