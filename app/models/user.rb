class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable
  has_many :favorite_shows
  has_many :favorite_tv_shows, class_name: 'FavoriteShow', foreign_key: 'user_id'
end
