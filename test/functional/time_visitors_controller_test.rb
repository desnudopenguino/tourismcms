require 'test_helper'

class TimeVisitorsControllerTest < ActionController::TestCase
  setup do
    @time_visitor = time_visitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_visitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_visitor" do
    assert_difference('TimeVisitor.count') do
      post :create, time_visitor: { latitude: @time_visitor.latitude, longitude: @time_visitor.longitude, tour_visitor_id: @time_visitor.tour_visitor_id }
    end

    assert_redirected_to time_visitor_path(assigns(:time_visitor))
  end

  test "should show time_visitor" do
    get :show, id: @time_visitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_visitor
    assert_response :success
  end

  test "should update time_visitor" do
    put :update, id: @time_visitor, time_visitor: { latitude: @time_visitor.latitude, longitude: @time_visitor.longitude, tour_visitor_id: @time_visitor.tour_visitor_id }
    assert_redirected_to time_visitor_path(assigns(:time_visitor))
  end

  test "should destroy time_visitor" do
    assert_difference('TimeVisitor.count', -1) do
      delete :destroy, id: @time_visitor
    end

    assert_redirected_to time_visitors_path
  end
end
