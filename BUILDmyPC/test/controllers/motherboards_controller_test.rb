require 'test_helper'

class MotherboardsControllerTest < ActionController::TestCase
  setup do
    @motherboard = motherboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motherboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motherboard" do
    assert_difference('Motherboard.count') do
      post :create, motherboard: { description: @motherboard.description, manufacturer: @motherboard.manufacturer, motherboard_type: @motherboard.motherboard_type, name: @motherboard.name, picture: @motherboard.picture, price: @motherboard.price }
    end

    assert_redirected_to motherboard_path(assigns(:motherboard))
  end

  test "should show motherboard" do
    get :show, id: @motherboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motherboard
    assert_response :success
  end

  test "should update motherboard" do
    patch :update, id: @motherboard, motherboard: { description: @motherboard.description, manufacturer: @motherboard.manufacturer, motherboard_type: @motherboard.motherboard_type, name: @motherboard.name, picture: @motherboard.picture, price: @motherboard.price }
    assert_redirected_to motherboard_path(assigns(:motherboard))
  end

  test "should destroy motherboard" do
    assert_difference('Motherboard.count', -1) do
      delete :destroy, id: @motherboard
    end

    assert_redirected_to motherboards_path
  end
end
