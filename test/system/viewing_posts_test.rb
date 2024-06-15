require "application_system_test_case"

class ViewingPostsTest < ApplicationSystemTestCase
  test "a reader can view a post title" do
    Post.create(title: "Hello world!")
    visit "/"

    assert_selector "h1", text: "Hello world!"
  end
end
