require_relative '../config/environment'
require 'pry'
require_relative '../bin/level1'
require_relative '../bin/level2'
require_relative '../bin/level3'

@current_character = "test"
@life_count = 0


def greeting
    puts "“Welcome to Adventure of ruby… would you like to play?” y/n?"
    user_input = gets.chomp
    if user_input == "y"
        puts "Welcome to Adventure of ruby…"
        
    elsif user_input == "n"
        puts "GoodBye Loser"
    else
        puts "Invalid Command."
    end
end




def choose_character
    
    characters = []
    characters << Character.all 
    puts "1) Wolverine 2)Jean Grey 3)Quick-Silver"
    
    puts "Choose Your Character.."
    user_input = gets.chomp
    
    if user_input == "1"
        # binding.pry
        @current_character = characters[0][0]
        first = characters[0][0].name
        @life_count = characters[0][0].lives
        puts "You Have Chosen #{first}. You have #{@life_count} lives"


        
    elsif user_input == "2"
        @current_character = characters[0][1]
        second = characters[0][1].name
        @life_count = characters[0][1].lives
        puts "You Have Chosen #{second}.  You have #{@life_count} lives"

        
    elsif user_input == "3"
        @current_character = characters[0][2]
        third = characters[0][2].name
        @life_count = characters[0][2].lives
        puts "You Have Chosen #{third}  You have #{@life_count} lives"
        
        
        
        
        
        
    else
        puts "Invalid Command"
    end
    
end

# def level1
#     level_array =[]
#     level_array << Level.all
#     puts "You Have Entered Phase 1 #{level_array[0][0].description}"
#     # fight 
#     # binding.pry
    
# end
# def level2 
#     level_array =[]
#     level_array << Level.all
#     puts "You Have Entered Phase 1 #{level_array[0][1].description}"
#     fight 

# end 
# def fight
#     # name an attack(string) whenever that string is selected 
#     @current_character.health = 100 
#     characters = Character.all
#     enemies = Enemy.all
#     current_enemy = enemies[1]
#     puts "1.Attack, 2. Dodge, 3. Heal"
    
#     # does a reduction on the enemy
#     while @current_character.health > 0 && current_enemy.health > 0
#         user_input = gets.chomp
        
        
    
    
#         if user_input == "1"
#             puts "#{@current_character.name} attacks #{current_enemy.name}"
#             # binding.pry
#             current_enemy.health -=  rand(1..10)
#             puts "#{current_enemy.name} health is at #{current_enemy.health}."

#             puts "#{current_enemy.name} attacks #{@current_character.name} back"
#             @current_character.health -= rand(1..10)
#             puts "Your health is at #{@current_character.health}."
#             puts "1.Attack, 2. Dodge, 3. Heal"
#         elsif user_input == "2"
            
#             dodge_chance = rand(1..10)
#             if dodge_chance >= 5 
#             puts "#{current_enemy.name} attacks #{@current_character.name} but missed."
            
#             else
#                 puts "#{@current_character.name} attempted to dodge but got hit."
#                 @current_character.health -= 5
#                 puts "Your health is at #{@current_character.health}."

#             end
#             puts "1.Attack, 2. Dodge, 3. Heal"
#         elsif user_input == "3"
#             if @current_character.health > 50 
#                 puts "Heal Unavailable..."
#             else
#                 puts "You have healed.."
#                 @current_character.health += rand(10..45)
#                 puts "Your health is at #{@current_character.health}."
#             end
#             puts "1.Attack, 2. Dodge, 3. Heal"
#         end
    
#     end
    
#     if current_enemy.health <= 0
#         puts "Congrats you beat #{current_enemy.name} Move on to next level."
#     elsif @current_character.health <=0
#         puts "#{current_enemy.name} proved too much for you...try again another day"
#     end 
        
# end

def run
    greeting
    choose_character
    level1  
    level2
    level3
end

run

