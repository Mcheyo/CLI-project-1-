class Characters < ActiveRecord::Migration[5.0]
    def change
      create_table :characters do |t|
        t.string :name
        t.integer :health
        t.integer :curr_health
        t.integer :lives
      end
    end
end

