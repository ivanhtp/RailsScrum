require 'test_helper'

class SprintDiariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sprint_diarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sprint_diario" do
    assert_difference('SprintDiario.count') do
      post :create, :sprint_diario => { }
    end

    assert_redirected_to sprint_diario_path(assigns(:sprint_diario))
  end

  test "should show sprint_diario" do
    get :show, :id => sprint_diarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sprint_diarios(:one).to_param
    assert_response :success
  end

  test "should update sprint_diario" do
    put :update, :id => sprint_diarios(:one).to_param, :sprint_diario => { }
    assert_redirected_to sprint_diario_path(assigns(:sprint_diario))
  end

  test "should destroy sprint_diario" do
    assert_difference('SprintDiario.count', -1) do
      delete :destroy, :id => sprint_diarios(:one).to_param
    end

    assert_redirected_to sprint_diarios_path
  end
end
