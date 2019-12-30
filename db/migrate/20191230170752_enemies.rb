class Enemies < ActiveRecord::Migration[5.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :health
      t.integer :curr_health
      t.integer :strength
    end
  end
end

