class FavoriteShowsController < ApplicationController
  before_action :authenticate_user!

  def create
    if params[:favorite].eql?('true')
      @favorite_show = current_user.favorite_shows.create(tv_show_id: params[:show_id])
    else
      @favorite_show = current_user.favorite_shows.where(tv_show_id: params[:show_id]).destroy_all
    end
  end
end
