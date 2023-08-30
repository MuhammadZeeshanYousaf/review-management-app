require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      user: nil,
      reviewer: "MyString",
      content: "MyText",
      rating: 1,
      reply_content: "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[user_id]"

      assert_select "input[name=?]", "review[reviewer]"

      assert_select "textarea[name=?]", "review[content]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "textarea[name=?]", "review[reply_content]"
    end
  end
end
