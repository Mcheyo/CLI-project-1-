def status_bar
    @spinner = Enumerator.new do |e|
        loop do
          e.yield '|'
          e.yield '/'
          e.yield '-'
          e.yield '\\'
        end
      end
    #   
      1.upto(100) do |i|
        progress = "=" * (i/5) unless i < 5
        printf("\rCombined: [%-20s] %d%% %s", progress, i, @spinner.next)
        sleep(0.1)
      end

end

def health_bar
   1.upto(@current_character.health) do |num|
        # binding.pry
        progress = "=" * (num/5) unless num < 5
        # binding.pry
        printf("\rHealth: [%-20s] %d%% %s %s %i %s %i", progress, num, @spinner,"Current lives:" , @life_count,"Power Meter:", @num_moves)
       
    end
    nil
end

def enemy_health
    1.upto(@current_enemy.health) do |num|
        # binding.pry
        progress = "=" * (num/5) unless num < 5
        # binding.pry
        printf("\r#{@current_enemy.name}: [%-20s] %d%% %s", progress, num, @spinner)
    end
    nil
end

def power_bar
  
end