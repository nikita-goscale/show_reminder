class ShowReminderWorker
    include Sidekiq::Worker
  
    def perform(tv_show_id, user_id)
      tv_show  = TvShow.find_by(id: tv_show_id)
      user = User.find_by(id: user_id)
      if user.favorite_tv_shows.exists?(tv_show_id: tv_show_id)
        ShowReminderMailer.send_reminder(tv_show, user).deliver_now
      end
    end
end