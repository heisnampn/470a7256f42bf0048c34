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
require 'test_helper'

class TvShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
