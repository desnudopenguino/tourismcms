require 'test_helper'

class VenueAssetsControllerTest < ActionController::TestCase
  setup do
    @venue_asset = venue_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venue_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue_asset" do
    assert_difference('VenueAsset.count') do
      post :create, venue_asset: { asset: @venue_asset.asset, type: @venue_asset.type, venue_id: @venue_asset.venue_id }
    end

    assert_redirected_to venue_asset_path(assigns(:venue_asset))
  end

  test "should show venue_asset" do
    get :show, id: @venue_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue_asset
    assert_response :success
  end

  test "should update venue_asset" do
    put :update, id: @venue_asset, venue_asset: { asset: @venue_asset.asset, type: @venue_asset.type, venue_id: @venue_asset.venue_id }
    assert_redirected_to venue_asset_path(assigns(:venue_asset))
  end

  test "should destroy venue_asset" do
    assert_difference('VenueAsset.count', -1) do
      delete :destroy, id: @venue_asset
    end

    assert_redirected_to venue_assets_path
  end
end
