require 'rails_helper'

RSpec.describe "beers/index", type: :view do
  before(:each) do
    assign(:beers, [
      Beer.create!(
        :name => "Name",
        :ibu => "Ibu",
        :abv => "Abv",
        :description => "Description"
      ),
      Beer.create!(
        :name => "Name",
        :ibu => "Ibu",
        :abv => "Abv",
        :description => "Description"
      )
    ])
  end

  it "renders a list of beers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ibu".to_s, :count => 2
    assert_select "tr>td", :text => "Abv".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
