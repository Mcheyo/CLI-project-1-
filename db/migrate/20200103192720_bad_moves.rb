class BadMoves< ActiveRecord::Migration[5.0]
  def change
    create_table :bad_moves do |t| 
      t.string :name 
    end 
  end
end
