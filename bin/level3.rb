def level3
    if @life_count <= 0 
     puts "Insert 1 dollar to try again"
    abort
    elsif @life_count > 0 
     level_array =[]
     level_array << Level.all
     puts "You Have Entered Phase 2 #{level_array[0][2].description}"
     
     # fight 
     # binding.pry
     
 
     # name an attack(string) whenever that string is selected 
     @current_character.health = 100 
     characters = Character.all
     enemies = Enemy.all
     @current_enemy = enemies[2]
     heal_count = 0 
     special_move_count = 0 
     @num_moves = 2
    #  puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
     
     # does a reduction on the enemy
     while @current_character.health > 0 && @current_enemy.health > 0
        puts health_bar 
        puts enemy_health 
        puts ""
        user_moves = @prompt.select("Choose Your Move..", %w(Attack Dodge Heal Power Exit ), default: nil)

        #  user_moves = gets.chomp
        if @current_character.health < 0
            @current_character.health = 0
        end
        if @current_enemy.health < 0
            @current_enemy.health = 0
        end    
         
     
         if user_moves == "Attack"
            system('clear')

             puts "#{@current_character.name} attacks #{@current_enemy.name}"
             # binding.pry
             @current_enemy.health -=  rand(1..10)
            #  puts "#{@current_enemy.name} health is at #{@current_enemy.health}."
 
             puts "#{@current_enemy.name} attacks #{@current_character.name} back"
             @current_character.health -= rand(10..20)
            #  puts "Your health is at #{@current_character.health}."
            #  puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
         elsif user_moves == "Dodge"
            system('clear')

             dodge_chance = rand(1..10)
             if dodge_chance >= 5 
                @current_enemy.health -=5
                puts "#{@current_enemy.name} attacked  but #{@current_character.name} dodged and countered the attack"
                # puts "#{@current_enemy.name} is at #{@current_enemy.health} health "

             else
                 puts "#{@current_character.name} attempted to dodge but got hit."
                 @current_character.health -= 10
                #  puts "Your health is at #{@current_character.health}."
 
             end
            #  puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
         elsif user_moves == "Heal"
            system('clear')

             heal_count +=1 
            if  heal_count <=3 
             if @current_character.health > 50 
                 puts "Heal Unavailable..."
             else
                 puts "You have healed.."
                 @current_character.health += rand(10..45)
                #  puts "Your health is at #{@current_character.health}."
             end
            elsif heal_count >3
             puts "You are out of heals"
         
            end 
            # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"

        elsif  user_moves == "Power"
            system('clear')
            special_move_count +=1
                @num_moves -= 1
                if @num_moves < 0
                    @num_moves = 0
                end

            special_move_count +=1
            if special_move_count <=2 
                if @special_move == "Regeneration"
                    @current_character.health = 100 
                    puts "Martian Manhunter uses his martian abilities and regrows any lost limbs. Your health is now #{@current_character.health}"
                    # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"
                elsif @special_move == "Heat Vision"
                    
                    @current_enemy.health -= 30 
                    puts "Superman uses his heat vision and blasts #{@current_enemy.name}"
                    # puts "#{@current_enemy.name} health is at #{@current_enemy.health}."
                    
                    # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"

                    
                elsif @special_move == "Speed Force"
                    @current_enemy.health -= 10 
                    @current_character.health += 10
                    puts "Flash taps into the speed force and inflitcs damage while also restoring himself" 
                    # puts "#{@current_enemy.name} health is at #{@current_enemy.health}."
                    # puts "Your health is at #{@current_character.health}."
                    # puts "1.Attack, 2. Dodge, 3. Heal,  4 . #{@special_move}"

                end 
            elsif special_move_count > 2
                    puts "Your moves are recharging"
            end 
        elsif user_moves == "Exit"
            puts 'Bye Punk...'
           abort


            
         
         end
         
     
     
     end
     
     if @current_enemy.health <= 0
         puts "#{@current_enemy.name} retreats back to his planet through a boom tube. The planet is saved for the day... "
     elsif @current_character.health <=0
         puts "#{@current_enemy.name} defeats you and his minions come and enslave the planet. Thanks I guess.."
         @life_count -= 1 
         puts "You have #{@life_count} lives remaining"
         level3
     end 
 end 
 
 end