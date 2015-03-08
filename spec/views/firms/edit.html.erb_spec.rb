require 'rails_helper'

RSpec.describe "firms/edit", type: :view do
  before(:each) do
    @firm = assign(:firm, Firm.create!(
      :firm_id => 1,
      :type => "",
      :sector => "MyString",
      :specialties => "MyText",
      :vintage => 1,
      :location => "MyString",
      :size => "MyString",
      :projects => "MyText",
      :top_10_products => "MyText",
      :accolades => "MyText",
      :state_licensure => "MyText",
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit firm form" do
    render

    assert_select "form[action=?][method=?]", firm_path(@firm), "post" do

      assert_select "input#firm_firm_id[name=?]", "firm[firm_id]"

      assert_select "input#firm_type[name=?]", "firm[type]"

      assert_select "input#firm_sector[name=?]", "firm[sector]"

      assert_select "textarea#firm_specialties[name=?]", "firm[specialties]"

      assert_select "input#firm_vintage[name=?]", "firm[vintage]"

      assert_select "input#firm_location[name=?]", "firm[location]"

      assert_select "input#firm_size[name=?]", "firm[size]"

      assert_select "textarea#firm_projects[name=?]", "firm[projects]"

      assert_select "textarea#firm_top_10_products[name=?]", "firm[top_10_products]"

      assert_select "textarea#firm_accolades[name=?]", "firm[accolades]"

      assert_select "textarea#firm_state_licensure[name=?]", "firm[state_licensure]"

      assert_select "input#firm_name[name=?]", "firm[name]"

      assert_select "input#firm_email[name=?]", "firm[email]"

      assert_select "input#firm_phone[name=?]", "firm[phone]"

      assert_select "input#firm_website[name=?]", "firm[website]"
    end
  end
end
