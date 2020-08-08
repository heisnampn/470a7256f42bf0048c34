require 'rails_helper'

RSpec.describe "tv_shows/index", type: :view do
  before(:each) do
    assign(:tv_shows, [
      TvShow.create!(
        name: "Name",
        time: "",
        channel: nil
      ),
      TvShow.create!(
        name: "Name",
        time: "",
        channel: nil
      )
    ])
  end

  it "renders a list of tv_shows" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
