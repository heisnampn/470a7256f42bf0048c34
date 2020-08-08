require 'rails_helper'

RSpec.describe "tv_shows/edit", type: :view do
  before(:each) do
    @tv_show = assign(:tv_show, TvShow.create!(
      name: "MyString",
      time: "",
      channel: nil
    ))
  end

  it "renders the edit tv_show form" do
    render

    assert_select "form[action=?][method=?]", tv_show_path(@tv_show), "post" do

      assert_select "input[name=?]", "tv_show[name]"

      assert_select "input[name=?]", "tv_show[time]"

      assert_select "input[name=?]", "tv_show[channel_id]"
    end
  end
end
