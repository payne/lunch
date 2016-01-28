require 'test_helper'

class LunchEventsControllerTest < ActionController::TestCase
  setup do
    @lunch_event = lunch_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunch_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunch_event" do
    assert_difference('LunchEvent.count') do
      post :create, lunch_event: { when: @lunch_event.when }
    end

    assert_redirected_to lunch_event_path(assigns(:lunch_event))
  end

  test "should show lunch_event" do
    get :show, id: @lunch_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lunch_event
    assert_response :success
  end

  test "should update lunch_event" do
    patch :update, id: @lunch_event, lunch_event: { when: @lunch_event.when }
    assert_redirected_to lunch_event_path(assigns(:lunch_event))
  end

  test "should destroy lunch_event" do
    assert_difference('LunchEvent.count', -1) do
      delete :destroy, id: @lunch_event
    end

    assert_redirected_to lunch_events_path
  end
end
