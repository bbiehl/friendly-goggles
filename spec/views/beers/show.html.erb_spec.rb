require 'rails_helper'

RSpec.describe "beers/show", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :name => "Name",
      :ibu => "Ibu",
      :abv => "Abv",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Ibu/)
    expect(rendered).to match(/Abv/)
    expect(rendered).to match(/Description/)
  end
end
