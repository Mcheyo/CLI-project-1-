require_relative '../config/environment'
require 'pry'
require 'tty-prompt'
require_relative '../bin/level1'
require_relative '../bin/level2'
require_relative '../bin/level3'
require_relative '../bin/bio.rb'
require_relative '../bin/status.rb'
require_relative '../bin/pictures.rb'
@prompt = TTY::Prompt.new
@current_character = "test"
@life_count = 0
@special_move = "waitng"
@num_moves = 2 

def dc_ascii
    
   
end

def greeting
    system('clear')
    intro_pics
    # puts "“Welcome to Adventure of ruby… would you like to play?” y/n?"
    # user_input = gets.chomp
    decision = @prompt.yes?("Welcome to Justice League in Ruby. Ready to save the world?")
    # binding.pry
    if decision == true

        puts "Lets get to saving the world!"
        bio 
    elsif decision == false
        puts "Oh ok, guess we'll just die or whatever"
        abort
    else
        puts "Invalid Command."
        system('clear')

        greeting

    end
end

# def help
#     puts "HUGE BIO"
    
#     choose_character

# end


def choose_character
    char_move = CharacterMove.all 
    characters = Character.all 
    move = Move.all
    # puts status_bar

    # puts "1) Wolverine 2)Jean Grey 3)Quick-Silver"
    
    # puts "Choose Your Character.."
    # user_input = gets.chomp
   ch = @prompt.select("Choose Your Character..", %w(Martian-Manhunter Superman Flash Help))
    
    if ch == "Martian-Manhunter"
        # binding.pry
        @current_character = characters[0]
        first = characters[0].name
        @life_count = characters[0].lives
        puts "You Have Chosen #{first}. You have #{@life_count} lives"
        if char_move[0].char_id == characters[0].id
            @special_move = move[0].name
        end
        system('clear')

            
        elsif ch == "Superman"
            @current_character = characters[1]
            second = characters[1].name
            @life_count = characters[1].lives
            puts "You Have Chosen #{second}.  You have #{@life_count} lives"
            if char_move[1].char_id == characters[1].id
                @special_move = move[1].name
            end
                
            elsif ch == "Flash"
                @current_character = characters[2]
                third = characters[2].name
                @life_count = characters[2].lives
                puts "You Have Chosen #{third}  You have #{@life_count} lives"
                if char_move[2].char_id == characters[2].id
                    @special_move = move[2].name
                    
                end
           
                    
                    
            elsif ch == "Help" 
                help 
                puts "\n"
                
                choose_character
            
              
                    
                    
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
                #binding.pry
                level1  
                level2
                level3
            end

run

