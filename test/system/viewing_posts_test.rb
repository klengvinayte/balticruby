require "application_system_test_case"

class ViewingPostsTest < ApplicationSystemTestCase
  test "a reader can view a post title" do
    Post.create(title: "My first post")
    visit "/"

    assert_selector "h1", text: "My first post"
  end
end
