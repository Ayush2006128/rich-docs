require "application_system_test_case"

class HomepagesTest < ApplicationSystemTestCase
  test "visiting the homepage" do
    visit root_path

    assert_selector "h1", text: "Write, format and share documents in seconds"
    assert_link "Start a new doc", href: new_doc_path
  end

  test "creating a doc from the homepage" do
    visit root_path
    click_on "Start a new doc", match: :first

    fill_in "Title", with: "Meeting notes"
    click_on "Create Doc"

    assert_text "Doc was successfully created."
    assert_selector "h2", text: "Meeting notes"
  end
end
