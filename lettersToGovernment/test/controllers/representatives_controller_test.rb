require 'test_helper'

class RepresentativesControllerTest < ActionController::TestCase
  setup do
    @representative = representatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representative" do
    assert_difference('Representative.count') do
      post :create, representative: { email: @representative.email, first_name: @representative.first_name, last_name: @representative.last_name, party: @representative.party, phone_number: @representative.phone_number, position: @representative.position, state: @representative.state }
    end

    assert_redirected_to representative_path(assigns(:representative))
  end

  test "should show representative" do
    get :show, id: @representative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representative
    assert_response :success
  end

  test "should update representative" do
    patch :update, id: @representative, representative: { email: @representative.email, first_name: @representative.first_name, last_name: @representative.last_name, party: @representative.party, phone_number: @representative.phone_number, position: @representative.position, state: @representative.state }
    assert_redirected_to representative_path(assigns(:representative))
  end

  test "should destroy representative" do
    assert_difference('Representative.count', -1) do
      delete :destroy, id: @representative
    end

    assert_redirected_to representatives_path
  end
end
