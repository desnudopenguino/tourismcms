require 'test_helper'

class ArmediaControllerTest < ActionController::TestCase
  setup do
    @armedium = armedia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armedia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create armedium" do
    assert_difference('Armedium.count') do
      post :create, armedium: { alpha: @armedium.alpha, arcone_end: @armedium.arcone_end, arcone_start: @armedium.arcone_start, medium_id: @armedium.medium_id, rgb: @armedium.rgb, sound_track: @armedium.sound_track }
    end

    assert_redirected_to armedium_path(assigns(:armedium))
  end

  test "should show armedium" do
    get :show, id: @armedium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @armedium
    assert_response :success
  end

  test "should update armedium" do
    put :update, id: @armedium, armedium: { alpha: @armedium.alpha, arcone_end: @armedium.arcone_end, arcone_start: @armedium.arcone_start, medium_id: @armedium.medium_id, rgb: @armedium.rgb, sound_track: @armedium.sound_track }
    assert_redirected_to armedium_path(assigns(:armedium))
  end

  test "should destroy armedium" do
    assert_difference('Armedium.count', -1) do
      delete :destroy, id: @armedium
    end

    assert_redirected_to armedia_path
  end
end
