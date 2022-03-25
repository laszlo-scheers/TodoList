require "test_helper"

class NotodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notodo = notodos(:one)
  end

  test "should get index" do
    get notodos_url
    assert_response :success
  end

  test "should get new" do
    get new_notodo_url
    assert_response :success
  end

  test "should create notodo" do
    assert_difference("Notodo.count") do
      post notodos_url, params: { notodo: { completed: @notodo.completed, title: @notodo.title } }
    end

    assert_redirected_to notodo_url(Notodo.last)
  end

  test "should show notodo" do
    get notodo_url(@notodo)
    assert_response :success
  end

  test "should get edit" do
    get edit_notodo_url(@notodo)
    assert_response :success
  end

  test "should update notodo" do
    patch notodo_url(@notodo), params: { notodo: { completed: @notodo.completed, title: @notodo.title } }
    assert_redirected_to notodo_url(@notodo)
  end

  test "should destroy notodo" do
    assert_difference("Notodo.count", -1) do
      delete notodo_url(@notodo)
    end

    assert_redirected_to notodos_url
  end
end
