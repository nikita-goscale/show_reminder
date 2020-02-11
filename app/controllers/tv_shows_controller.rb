class TvShowsController < ApplicationController
  before_action :authenticate_user!

  def index
    @shows = TvShow.all
  end
end
