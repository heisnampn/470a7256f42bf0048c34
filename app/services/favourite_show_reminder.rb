class FavoutiteShowReminder
  def self.remind
    favourite_tv_shows = TvShow.favourite
    favourite_tv_shows.each do |show|
      User.find_in_batches do |users|
        users.each do |user|
          UserMailer.show_reminder.deliver_later(wait_until: 10.hours.from_now)
        end 	
      end	
    end	
  end	
end	