require 'rails_helper'

RSpec.describe "firms/index", type: :view do
  before(:each) do
    assign(:firms, [
      Firm.create!(
        :firm_id => 1,
        :type => "Type",
        :sector => "Sector",
        :specialties => "MyText",
        :vintage => 2,
        :location => "Location",
        :size => "Size",
        :projects => "MyText",
        :top_10_products => "MyText",
        :accolades => "MyText",
        :state_licensure => "MyText",
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :website => "Website"
      ),
      Firm.create!(
        :firm_id => 1,
        :type => "Type",
        :sector => "Sector",
        :specialties => "MyText",
        :vintage => 2,
        :location => "Location",
        :size => "Size",
        :projects => "MyText",
        :top_10_products => "MyText",
        :accolades => "MyText",
        :state_licensure => "MyText",
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :website => "Website"
      )
    ])
  end

  it "renders a list of firms" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Sector".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
