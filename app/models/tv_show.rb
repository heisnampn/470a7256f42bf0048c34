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
class TvShow < ApplicationRecord 
  # == validations ============================================

    validates :name, :show_time , presence: true	

  # == relationships ===========================================

    belongs_to :channel

  # == instance_methods =======================================  

    delegate :name, to: :channel, prefix: true, allow_nil: true 
    
  # == scope ==================================================== 

  scope :by_name_or_channel_name, ->(term) do 
  	return all unless term
    joins(:channel)
    .where("tv_shows.name ilike '%#{term}%' or channels.name ilike '%#{term}%'")
  end
  scope :favourite, -> {where(is_favourite: true)}
end
