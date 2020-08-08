class CreateTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.string :show_time
      t.boolean :is_favourite, default: false
      t.references :channel, foreign_key: true, index: true

      t.timestamps
    end
  end
end
