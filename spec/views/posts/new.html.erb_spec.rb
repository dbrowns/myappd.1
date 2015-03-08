require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :firm => nil,
      :user => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_description[name=?]", "post[description]"

      assert_select "input#post_link[name=?]", "post[link]"

      assert_select "input#post_firm_id[name=?]", "post[firm_id]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"
    end
  end
end
