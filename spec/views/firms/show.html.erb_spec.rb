require 'rails_helper'

RSpec.describe "firms/show", type: :view do
  before(:each) do
    @firm = assign(:firm, Firm.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Sector/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Website/)
  end
end
