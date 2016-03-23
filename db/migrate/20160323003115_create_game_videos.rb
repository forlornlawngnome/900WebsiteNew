class CreateGameVideos < ActiveRecord::Migration
  def change
    create_table :game_videos do |t|
      t.references :game, index: true, foreign_key: true
      t.string :title
      t.text :link

      t.timestamps null: false
    end
  end
end
