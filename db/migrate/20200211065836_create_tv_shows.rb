class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.references :channel, null: false, foreign_key: true
      t.string :show_name

      t.timestamps
    end
  end
end
