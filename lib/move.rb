class Move <ActiveRecord::Base 
has_many :character_moves
has_many :characters , through: :character_moves
end