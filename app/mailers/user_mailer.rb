class UserMailer < ApplicationMailer

  def show_reminder(tv_show:, user:)
  	@tv_show = tv_show
  	@user = user
    mail(to: @user.email, subject: 'Your Favourite show #{tv_show.name} starts in 30 mins')   
  end
end
