require 'test_helper'

class MacShootsControllerTest < ActionController::TestCase
  setup do
    @mac_shoot = mac_shoots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mac_shoots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mac_shoot" do
    assert_difference('MacShoot.count') do
      post :create, mac_shoot: { division: @mac_shoot.division, location_id: @mac_shoot.location_id, score_actual: @mac_shoot.score_actual, user_id: @mac_shoot.user_id }
    end

    assert_redirected_to mac_shoot_path(assigns(:mac_shoot))
  end

  test "should show mac_shoot" do
    get :show, id: @mac_shoot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mac_shoot
    assert_response :success
  end

  test "should update mac_shoot" do
    put :update, id: @mac_shoot, mac_shoot: { division: @mac_shoot.division, location_id: @mac_shoot.location_id, score_actual: @mac_shoot.score_actual, user_id: @mac_shoot.user_id }
    assert_redirected_to mac_shoot_path(assigns(:mac_shoot))
  end

  test "should destroy mac_shoot" do
    assert_difference('MacShoot.count', -1) do
      delete :destroy, id: @mac_shoot
    end

    assert_redirected_to mac_shoots_path
  end
end
