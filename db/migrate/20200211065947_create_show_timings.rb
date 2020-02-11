class CreateShowTimings < ActiveRecord::Migration[6.0]
  def change
    create_table :show_timings do |t|
      t.references :tv_show, null: false, foreign_key: true
      t.datetime :timing

      t.timestamps
    end
  end
end
