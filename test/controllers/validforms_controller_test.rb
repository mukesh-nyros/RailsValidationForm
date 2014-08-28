require 'test_helper'

class ValidformsControllerTest < ActionController::TestCase
  setup do
    @validform = validforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validform" do
    assert_difference('Validform.count') do
      post :create, validform: { DateofBirth: @validform.DateofBirth, Email: @validform.Email, Password: @validform.Password, Phone: @validform.Phone, Username: @validform.Username }
    end

    assert_redirected_to validform_path(assigns(:validform))
  end

  test "should show validform" do
    get :show, id: @validform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @validform
    assert_response :success
  end

  test "should update validform" do
    patch :update, id: @validform, validform: { DateofBirth: @validform.DateofBirth, Email: @validform.Email, Password: @validform.Password, Phone: @validform.Phone, Username: @validform.Username }
    assert_redirected_to validform_path(assigns(:validform))
  end

  test "should destroy validform" do
    assert_difference('Validform.count', -1) do
      delete :destroy, id: @validform
    end

    assert_redirected_to validforms_path
  end
end
