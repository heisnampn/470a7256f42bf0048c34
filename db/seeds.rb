# create channel
['DD National', 'Sun TV', 'Dangal', 'SONY SAB', 'Sony MAX', 'Zee Cinema','STAR Gold'].each do |channel_name|
   Channel.find_or_create_by(name: channel_name)
end	

# Create tv shows
Channel.all.each do |channel|
  ['Murder Mystery', 'Stranger Things2', 'The Irish Man', 'The Witcher'].each do |show_name|
    show_time = "#{rand(1..12)} #{%w[am pm].sample}"
    channel.tv_shows.create(name: show_name, show_time: show_time)
  end	
end

# Create users
5.times{ User.create(name: Faker::Name.name, email: Faker::Internet.email)}


