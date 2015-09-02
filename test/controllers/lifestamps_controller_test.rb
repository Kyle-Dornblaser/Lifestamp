require 'test_helper'

class LifestampsControllerTest < ActionController::TestCase
  setup do
    @lifestamp = lifestamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifestamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifestamp" do
    assert_difference('Lifestamp.count') do
      post :create, lifestamp: { timestamp: @lifestamp.timestamp, topic_id: @lifestamp.topic_id, value: @lifestamp.value }
    end

    assert_redirected_to lifestamp_path(assigns(:lifestamp))
  end

  test "should show lifestamp" do
    get :show, id: @lifestamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifestamp
    assert_response :success
  end

  test "should update lifestamp" do
    patch :update, id: @lifestamp, lifestamp: { timestamp: @lifestamp.timestamp, topic_id: @lifestamp.topic_id, value: @lifestamp.value }
    assert_redirected_to lifestamp_path(assigns(:lifestamp))
  end

  test "should destroy lifestamp" do
    assert_difference('Lifestamp.count', -1) do
      delete :destroy, id: @lifestamp
    end

    assert_redirected_to lifestamps_path
  end
end
