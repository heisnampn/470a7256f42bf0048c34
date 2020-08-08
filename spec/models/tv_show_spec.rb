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
require 'rails_helper'

RSpec.describe TvShow, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
