def level1
    if @life_count <= 0 
        puts "Insert 1 dollar to try again"
    elsif @life_count > 0 
    level_array =[]
    level_array << Level.all
    puts "You Have Entered Phase 1 #{level_array[0][0].description}"
    # fight 
    # binding.pry
    


    # name an attack(string) whenever that string is selected 
    @current_character.health = 100 
    characters = Character.all
    enemies = Enemy.all
    current_enemy = enemies[1]
    heal_count = 0
    puts "1.Attack, 2. Dodge, 3. Heal"
    
    # does a reduction on the enemy
    while @current_character.health > 0 && current_enemy.health > 0
        user_input = gets.chomp
        
        
    
    
        if user_input == "1"
                puts "#{@current_character.name} attacks #{current_enemy.name}"
                # binding.pry
                current_enemy.health -=  rand(1..10)
                puts "#{current_enemy.name} health is at #{current_enemy.health}."

                puts "#{current_enemy.name} attacks #{@current_character.name} back"
                @current_character.health -= rand(1..10)
                puts "Your health is at #{@current_character.health}."
                puts "1.Attack, 2. Dodge, 3. Heal"
        elsif user_input == "2"
                
                dodge_chance = rand(1..10)
                if dodge_chance >= 5 
                puts "#{current_enemy.name} attacks #{@current_character.name} but missed."
                
                else
                    puts "#{@current_character.name} attempted to dodge but got hit."
                    @current_character.health -= 5
                    puts "Your health is at #{@current_character.health}."

                end
                puts "1.Attack, 2. Dodge, 3. Heal"
        elsif user_input == "3"
                 
                heal_count +=1 
                
                if heal_count <= 3
                if @current_character.health > 50 
                    puts "Heal Unavailable..."
                elsif
                    heal_count <= 3 
                    puts "You have healed.."
                    @current_character.health += rand(10..45)
                    puts "Your health is at #{@current_character.health}."
                end 
                elsif 
                heal_count >3 
                puts "You are out of heals" 
                end
             puts "1.Attack, 2. Dodge, 3. Heal"
        else
            puts "Invlaid command please choose between '1', '2', or '3'" 
            puts "1.Attack, 2. Dodge, 3. Heal" 
        end
    end 
    
    
    
    
    if current_enemy.health <= 0
        puts "Congrats you beat #{current_enemy.name} Move on to next level."
    elsif @current_character.health <=0
        @life_count -= 1 
        puts "#{current_enemy.name} proved too much for you...try again another day"
        puts "You have #{@life_count} lives remaining"
        level1 
    end 
end 

end 