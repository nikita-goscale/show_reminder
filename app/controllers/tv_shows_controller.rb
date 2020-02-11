class TvShowsController < ApplicationController
  before_action :authenticate_user!

  def index
    @shows = ShowTiming.all.sort_by{|show_time| show_time.timing}
  end
end
