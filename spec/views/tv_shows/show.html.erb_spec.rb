require 'rails_helper'

RSpec.describe "tv_shows/show", type: :view do
  before(:each) do
    @tv_show = assign(:tv_show, TvShow.create!(
      name: "Name",
      time: "",
      channel: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
