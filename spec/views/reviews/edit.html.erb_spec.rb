require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  let(:review) {
    Review.create!(
      user: nil,
      reviewer: "MyString",
      content: "MyText",
      rating: 1,
      reply_content: "MyText"
    )
  }

  before(:each) do
    assign(:review, review)
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(review), "post" do

      assert_select "input[name=?]", "review[user_id]"

      assert_select "input[name=?]", "review[reviewer]"

      assert_select "textarea[name=?]", "review[content]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "textarea[name=?]", "review[reply_content]"
    end
  end
end
