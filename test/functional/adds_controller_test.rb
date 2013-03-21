require 'test_helper'

class AddsControllerTest < ActionController::TestCase
  setup do
    @add = adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add" do
    assert_difference('Add.count') do
      post :create, add: { comment: @add.comment, name: @add.name }
    end

    assert_redirected_to add_path(assigns(:add))
  end

  test "should show add" do
    get :show, id: @add
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add
    assert_response :success
  end

  test "should update add" do
    put :update, id: @add, add: { comment: @add.comment, name: @add.name }
    assert_redirected_to add_path(assigns(:add))
  end

  test "should destroy add" do
    assert_difference('Add.count', -1) do
      delete :destroy, id: @add
    end

    assert_redirected_to adds_path
  end
end
