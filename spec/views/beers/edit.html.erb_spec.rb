require 'rails_helper'

RSpec.describe "beers/edit", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :name => "MyString",
      :ibu => "MyString",
      :abv => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit beer form" do
    render

    assert_select "form[action=?][method=?]", beer_path(@beer), "post" do

      assert_select "input[name=?]", "beer[name]"

      assert_select "input[name=?]", "beer[ibu]"

      assert_select "input[name=?]", "beer[abv]"

      assert_select "input[name=?]", "beer[description]"
    end
  end
end
