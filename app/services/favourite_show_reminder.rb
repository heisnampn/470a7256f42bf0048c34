class FavoutiteShowReminder
  def self.remind
    favourite_tv_shows = TvShow.favourite
    favourite_tv_shows.each do |show|
      deliver_at =  (30.minutes.ago(Time.parse(show.show_time)) - Time.now)/ 3600	
      User.find_in_batches do |users|
        users.each do |user|
          UserMailer.show_reminder.deliver_later(wait_until: deliver_at.abs.hours.from_now)
        end 	
      end	
    end	
  end	
end	