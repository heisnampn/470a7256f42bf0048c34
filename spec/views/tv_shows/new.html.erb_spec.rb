require 'rails_helper'

RSpec.describe "tv_shows/new", type: :view do
  before(:each) do
    assign(:tv_show, TvShow.new(
      name: "MyString",
      time: "",
      channel: nil
    ))
  end

  it "renders new tv_show form" do
    render

    assert_select "form[action=?][method=?]", tv_shows_path, "post" do

      assert_select "input[name=?]", "tv_show[name]"

      assert_select "input[name=?]", "tv_show[time]"

      assert_select "input[name=?]", "tv_show[channel_id]"
    end
  end
end
