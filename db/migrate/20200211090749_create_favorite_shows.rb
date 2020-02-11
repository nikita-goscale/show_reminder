class CreateFavoriteShows < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_shows do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tv_show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
