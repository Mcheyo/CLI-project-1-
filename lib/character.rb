class Character < ActiveRecord::Base
has_many :character_moves 
has_many :moves, through: :character_moves

end