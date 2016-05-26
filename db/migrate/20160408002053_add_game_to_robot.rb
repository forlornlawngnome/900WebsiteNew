class AddGameToRobot < ActiveRecord::Migration
  def change
    add_column :robots, :game_id, :integer
  end
end
