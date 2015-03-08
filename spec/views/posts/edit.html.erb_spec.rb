require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :firm => nil,
      :user => nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_description[name=?]", "post[description]"

      assert_select "input#post_link[name=?]", "post[link]"

      assert_select "input#post_firm_id[name=?]", "post[firm_id]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"
    end
  end
end
