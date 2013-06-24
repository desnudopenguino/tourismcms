require 'test_helper'

class VenueVisitorsControllerTest < ActionController::TestCase
  setup do
    @venue_visitor = venue_visitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venue_visitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue_visitor" do
    assert_difference('VenueVisitor.count') do
      post :create, venue_visitor: { venue_id: @venue_visitor.venue_id, visitor_id: @venue_visitor.visitor_id }
    end

    assert_redirected_to venue_visitor_path(assigns(:venue_visitor))
  end

  test "should show venue_visitor" do
    get :show, id: @venue_visitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue_visitor
    assert_response :success
  end

  test "should update venue_visitor" do
    put :update, id: @venue_visitor, venue_visitor: { venue_id: @venue_visitor.venue_id, visitor_id: @venue_visitor.visitor_id }
    assert_redirected_to venue_visitor_path(assigns(:venue_visitor))
  end

  test "should destroy venue_visitor" do
    assert_difference('VenueVisitor.count', -1) do
      delete :destroy, id: @venue_visitor
    end

    assert_redirected_to venue_visitors_path
  end
end
