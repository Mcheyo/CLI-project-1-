class Levels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :title
      t.text :description
      t.integer :enemies_id
    end
  end
end
