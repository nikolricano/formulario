require 'test_helper'

class Post1sControllerTest < ActionController::TestCase
  setup do
    @post_1 = post_1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_1" do
    assert_difference('Post1.count') do
      post :create, post_1: { age: @post_1.age, content: @post_1.content, title: @post_1.title }
    end

    assert_redirected_to post_1_path(assigns(:post_1))
  end

  test "should show post_1" do
    get :show, id: @post_1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_1
    assert_response :success
  end

  test "should update post_1" do
    patch :update, id: @post_1, post_1: { age: @post_1.age, content: @post_1.content, title: @post_1.title }
    assert_redirected_to post_1_path(assigns(:post_1))
  end

  test "should destroy post_1" do
    assert_difference('Post1.count', -1) do
      delete :destroy, id: @post_1
    end

    assert_redirected_to post_1s_path
  end
end
