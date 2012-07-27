require 'test_helper'

class BenutzersControllerTest < ActionController::TestCase
  setup do
    @benutzer = benutzers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:benutzers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create benutzer" do
    assert_difference('Benutzer.count') do
      post :create, benutzer: @benutzer.attributes
    end

    assert_redirected_to benutzer_path(assigns(:benutzer))
  end

  test "should show benutzer" do
    get :show, id: @benutzer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @benutzer
    assert_response :success
  end

  test "should update benutzer" do
    put :update, id: @benutzer, benutzer: @benutzer.attributes
    assert_redirected_to benutzer_path(assigns(:benutzer))
  end

  test "should destroy benutzer" do
    assert_difference('Benutzer.count', -1) do
      delete :destroy, id: @benutzer
    end

    assert_redirected_to benutzers_path
  end
end
