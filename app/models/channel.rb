# == Schema Information
#
# Table name: channels
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Channel < ApplicationRecord

  # == validations ====================================

  validates :name , presence: true

  # == relationships ====================================
  
  has_many :tv_shows
end
