class CharacterMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :character_moves do |t| 
      t.integer :char_id 
      t.integer :move_id 
    end 
  end
end
