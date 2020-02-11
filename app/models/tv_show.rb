class TvShow < ApplicationRecord
  belongs_to :channel
  has_many :show_timings, dependent: :destroy
  has_many :favorite_shows
  has_many :watchers, class_name: 'FavoriteShow', foreign_key: 'tv_show_id'
end
