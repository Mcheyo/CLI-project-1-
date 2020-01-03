class BadMove < ActiveRecord::Base
    has_many :enemy_moves
    has_many :enemies, through: :enemy_moves
end