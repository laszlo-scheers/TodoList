require "application_system_test_case"

class NotodosTest < ApplicationSystemTestCase
  setup do
    @notodo = notodos(:one)
  end

  test "visiting the index" do
    visit notodos_url
    assert_selector "h1", text: "Notodos"
  end

  test "should create notodo" do
    visit notodos_url
    click_on "New notodo"

    check "Completed" if @notodo.completed
    fill_in "Title", with: @notodo.title
    click_on "Create Notodo"

    assert_text "Notodo was successfully created"
    click_on "Back"
  end

  test "should update Notodo" do
    visit notodo_url(@notodo)
    click_on "Edit this notodo", match: :first

    check "Completed" if @notodo.completed
    fill_in "Title", with: @notodo.title
    click_on "Update Notodo"

    assert_text "Notodo was successfully updated"
    click_on "Back"
  end

  test "should destroy Notodo" do
    visit notodo_url(@notodo)
    click_on "Destroy this notodo", match: :first

    assert_text "Notodo was successfully destroyed"
  end
end
