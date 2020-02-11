class TvShow < ApplicationRecord
  belongs_to :channel
  has_many :show_timings, dependent: :destroy
end
