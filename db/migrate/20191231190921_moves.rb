class Moves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t| 
      t.string :name 
    end 

  end
end
