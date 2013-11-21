class Player
    def play_turn(warrior)
        	
        if warrior.feel.captive?
            warrior.rescue!
        else    
            if warrior.feel.enemy?
               warrior.attack!
            else
                if warrior.health < 20 && !taking_damage?(warrior)
                    warrior.rest!
                else
                    warrior.walk!
                end
            end
            @health = warrior.health
        end
    end
  
  
    def taking_damage?(warrior)
        warrior.health < @health
    end

end
