class FavoriteShow < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :tv_show, class_name: 'TvShow', foreign_key: 'tv_show_id'
end
