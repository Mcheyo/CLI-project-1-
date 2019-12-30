require_relative '../config/environment'


def greeting
    puts "“Welcome to Adventure of ruby… would you like to play?” y/n?"
    user_input = gets.chomp
    if user_input == "y"
        puts "Welcome to Adventure of ruby…"
        
    elsif user_input == "n"
        puts "GoodBye loser"
    else
        puts "invalid command."
    end
end

    def choose_character
        puts "Choose Your Character.."
        user_input = gets.chomp
        if user_input == "1"
            puts "You Have Chosen Character 1"
        else
            puts "Invalid Command"
        end

    end

def run
    greeting
    choose_character
end

run
# elsif
#     puts "invalid command type help for other commands"
# end
# end
# puts "HELLO WORLD"
