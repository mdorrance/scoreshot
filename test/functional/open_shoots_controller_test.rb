require 'test_helper'

class OpenShootsControllerTest < ActionController::TestCase
  setup do
    @open_shoot = open_shoots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_shoots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_shoot" do
    assert_difference('OpenShoot.count') do
      post :create, open_shoot: { division: @open_shoot.division, location_id: @open_shoot.location_id, score_actual: @open_shoot.score_actual, user_id: @open_shoot.user_id }
    end

    assert_redirected_to open_shoot_path(assigns(:open_shoot))
  end

  test "should show open_shoot" do
    get :show, id: @open_shoot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_shoot
    assert_response :success
  end

  test "should update open_shoot" do
    put :update, id: @open_shoot, open_shoot: { division: @open_shoot.division, location_id: @open_shoot.location_id, score_actual: @open_shoot.score_actual, user_id: @open_shoot.user_id }
    assert_redirected_to open_shoot_path(assigns(:open_shoot))
  end

  test "should destroy open_shoot" do
    assert_difference('OpenShoot.count', -1) do
      delete :destroy, id: @open_shoot
    end

    assert_redirected_to open_shoots_path
  end
end
