require 'rails_helper'

RSpec.describe "rare_fishes/show", type: :view do
  before(:each) do
    @rare_fish = assign(:rare_fish, RareFish.create!(
      fish_id: 2,
      user: "User",
      title: "Title",
      content: "Content",
      image: "Image",
      adless: "Adless",
      like: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Adless/)
    expect(rendered).to match(/3/)
  end
end
