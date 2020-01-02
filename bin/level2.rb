def level2
   if @life_count <= 0 
    puts "Insert 1 dollar to try again"
   elsif @life_count > 0 
    level_array =[]
    level_array << Level.all
    puts "You Have Entered Phase 2 #{level_array[0][1].description}"
    
    # fight 
    # binding.pry
    

    # name an attack(string) whenever that string is selected 
    @current_character.health = 100 
    characters = Character.all
    enemies = Enemy.all
    current_enemy = enemies[0]
    heal_count = 0 
    special_move_count = 0
    
    # does a reduction on the enemy
    while @current_character.health > 0 && current_enemy.health > 0
        # user_moves = gets.chomp
        
        user_moves = @prompt.select("Choose Your Move..", %w(Attack Dodge Heal Power ), default: nil)

    
    
        if user_moves == "Attack"
            puts "#{@current_character.name} attacks #{current_enemy.name}"
            # binding.pry
            current_enemy.health -=  rand(1..10)
            puts "#{current_enemy.name} health is at #{current_enemy.health}."

            puts "#{current_enemy.name} attacks #{@current_character.name} back"
            @current_character.health -= rand(3..15)
            puts "Your health is at #{@current_character.health}."
            # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
        elsif user_moves == "Dodge"
            
            dodge_chance = rand(1..10)
            if dodge_chance >= 5 
            puts "#{current_enemy.name} attacks #{@current_character.name} but missed."
            
            else
                puts "#{@current_character.name} attempted to dodge but got hit."
                @current_character.health -= 7
                puts "Your health is at #{@current_character.health}."

            end
            # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
        elsif user_moves == "Heal"
            
            heal_count +=1 
           if  heal_count <=3 
            if @current_character.health > 50 
                puts "Heal Unavailable..."
            else
                puts "You have healed.."
                @current_character.health += rand(10..45)
                puts "Your health is at #{@current_character.health}."
            end
           elsif heal_count >3
            puts "You are out of heals"
        
           end 
           
            
       
        elsif  user_moves == "Power"
            special_move_count +=1
            if special_move_count <=2 
                if @special_move == "Regeneration"
                    @current_character.health = 100 
                    puts "Martian Manhunter uses his martian abilities and regrows any lost limbs. Your health is now #{@current_character.health}"
                    # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
                elsif @special_move == "Heat Vision"
                    
                    current_enemy.health -= 30 
                    puts "Superman uses his heat vision and blasts #{current_enemy.name}"
                    puts "#{current_enemy.name} health is at #{current_enemy.health}."
                    
                    # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"

                    
                elsif @special_move == "Speed Force"
                    current_enemy.health -= 10 
                    @current_character.health += 10
                    puts "Flash taps into the speed force and inflitcs damage while also restoring himself" 
                    puts "#{current_enemy.name} health is at #{current_enemy.health}."
                    puts "Your health is at #{@current_character.health}."
                    # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"

                end 
            elsif special_move_count > 2
                    puts "Your moves are recharging"
            end 



            
         
         end
         
        

        
    
    
    end
    
    if current_enemy.health <= 0
        puts "Congrats you beat #{current_enemy.name} Move on to next level."
    elsif @current_character.health <=0
        puts "#{current_enemy.name} proved too much for you...try again another day"
        @life_count -= 1 
        puts "You have #{@life_count} lives remaining"
        level2
    end 
end 

end