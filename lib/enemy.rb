class Enemy < ActiveRecord::Base
    has_many :enemy_move
    has_many :move2, through: :enemy_move
end