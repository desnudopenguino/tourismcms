require 'test_helper'

class TourVisitorsControllerTest < ActionController::TestCase
  setup do
    @tour_visitor = tour_visitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_visitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_visitor" do
    assert_difference('TourVisitor.count') do
      post :create, tour_visitor: { progress: @tour_visitor.progress, tour_id: @tour_visitor.tour_id, visitor_id: @tour_visitor.visitor_id }
    end

    assert_redirected_to tour_visitor_path(assigns(:tour_visitor))
  end

  test "should show tour_visitor" do
    get :show, id: @tour_visitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_visitor
    assert_response :success
  end

  test "should update tour_visitor" do
    put :update, id: @tour_visitor, tour_visitor: { progress: @tour_visitor.progress, tour_id: @tour_visitor.tour_id, visitor_id: @tour_visitor.visitor_id }
    assert_redirected_to tour_visitor_path(assigns(:tour_visitor))
  end

  test "should destroy tour_visitor" do
    assert_difference('TourVisitor.count', -1) do
      delete :destroy, id: @tour_visitor
    end

    assert_redirected_to tour_visitors_path
  end
end
