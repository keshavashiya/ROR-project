require 'test_helper'

class RamsControllerTest < ActionController::TestCase
  setup do
    @ram = rams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ram" do
    assert_difference('Ram.count') do
      post :create, ram: { description: @ram.description, manufacturer: @ram.manufacturer, name: @ram.name, picture: @ram.picture, price: @ram.price, ram_type: @ram.ram_type }
    end

    assert_redirected_to ram_path(assigns(:ram))
  end

  test "should show ram" do
    get :show, id: @ram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ram
    assert_response :success
  end

  test "should update ram" do
    patch :update, id: @ram, ram: { description: @ram.description, manufacturer: @ram.manufacturer, name: @ram.name, picture: @ram.picture, price: @ram.price, ram_type: @ram.ram_type }
    assert_redirected_to ram_path(assigns(:ram))
  end

  test "should destroy ram" do
    assert_difference('Ram.count', -1) do
      delete :destroy, id: @ram
    end

    assert_redirected_to rams_path
  end
end
