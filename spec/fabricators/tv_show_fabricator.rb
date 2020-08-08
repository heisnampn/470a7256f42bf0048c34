# == Schema Information
#
# Table name: tv_shows
#
#  id           :bigint           not null, primary key
#  name         :string
#  show_time    :string
#  is_favourite :boolean          default(FALSE)
#  channel_id   :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
Fabricator(:tv_show) do
  name    "MyString"
  time    ""
  channel nil
end
