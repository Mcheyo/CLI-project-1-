class EnemyMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :enemy_moves do |t| 
      t.integer :enemy_id 
      t.integer :move_id 
    end 
  end
end
