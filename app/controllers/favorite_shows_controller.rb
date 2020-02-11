class FavoriteShowsController < ApplicationController
  before_action :authenticate_user!

  def create
    if params[:favorite].eql?('true')
      @favorite_show = current_user.favorite_shows.create(tv_show_id: params[:show_id])
      show = current_user.favorite_shows.find_by(tv_show_id: params[:show_id]) if @favorite_show
      if show.present?
        show.timings.each do |show_time|
          ShowReminderWorker.perform_at(show_time.timing.to_datetime - 30.minutes, params[:show_id], current_user&.id)
        end
      end
    else
      @favorite_show = current_user.favorite_shows.where(tv_show_id: params[:show_id]).destroy_all
    end
  end
end
