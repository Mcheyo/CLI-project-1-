class EnemyMove < ActiveRecord::Base
    belongs_to :move2
    belongs_to :enemy
end