require 'test_helper'

class WebcomicsControllerTest < ActionController::TestCase
  setup do
    @webcomic = webcomics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webcomics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webcomic" do
    assert_difference('Webcomic.count') do
      post :create, webcomic: { description: @webcomic.description, title: @webcomic.title }
    end

    assert_redirected_to webcomic_path(assigns(:webcomic))
  end

  test "should show webcomic" do
    get :show, id: @webcomic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webcomic
    assert_response :success
  end

  test "should update webcomic" do
    put :update, id: @webcomic, webcomic: { description: @webcomic.description, title: @webcomic.title }
    assert_redirected_to webcomic_path(assigns(:webcomic))
  end

  test "should destroy webcomic" do
    assert_difference('Webcomic.count', -1) do
      delete :destroy, id: @webcomic
    end

    assert_redirected_to webcomics_path
  end
end
