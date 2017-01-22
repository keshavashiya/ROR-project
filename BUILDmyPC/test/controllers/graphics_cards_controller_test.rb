require 'test_helper'

class GraphicsCardsControllerTest < ActionController::TestCase
  setup do
    @graphics_card = graphics_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphics_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graphics_card" do
    assert_difference('GraphicsCard.count') do
      post :create, graphics_card: { description: @graphics_card.description, graphics_card_type: @graphics_card.graphics_card_type, manufacturer: @graphics_card.manufacturer, name: @graphics_card.name, picture: @graphics_card.picture, price: @graphics_card.price }
    end

    assert_redirected_to graphics_card_path(assigns(:graphics_card))
  end

  test "should show graphics_card" do
    get :show, id: @graphics_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graphics_card
    assert_response :success
  end

  test "should update graphics_card" do
    patch :update, id: @graphics_card, graphics_card: { description: @graphics_card.description, graphics_card_type: @graphics_card.graphics_card_type, manufacturer: @graphics_card.manufacturer, name: @graphics_card.name, picture: @graphics_card.picture, price: @graphics_card.price }
    assert_redirected_to graphics_card_path(assigns(:graphics_card))
  end

  test "should destroy graphics_card" do
    assert_difference('GraphicsCard.count', -1) do
      delete :destroy, id: @graphics_card
    end

    assert_redirected_to graphics_cards_path
  end
end
