module Combatable
    
    #module Combat
        #these module instances are for characters and enemies to "fight" and to utilize attributes.

        def roll_20
            rand(1..20)
        end

        def health_bar #displays combatants health and max health
            "Health: #{self.current_hp} / #{self.max_hp}"
        end
        
        def alive? #checks if combatant is alive
            self.current_hp > 0
        end
    
        def hp_range #sets up range for hp so it cant go negative or over maximum
            self.current_hp = self.current_hp.clamp(0, self.max_hp)
        end
    
        def heal(n) #combatant able to heal
            self.current_hp += n ; self.hp_range ; self.save
        end

        def attack_land?(attack_roll) #checks if opponent's attack landed
            self.armor_rating > attack_roll
        end

        def take_damage(damage_roll) #assigns damage
            self.current_hp -= damage_roll ; self.hp_range ; self.save
        end

        def  melee_damage(roll) #used for melee weapons
            (roll * rand(1..self.damage)) + modifier(self.strength)
        end

        def  range_damage(roll) #used for ranged weapons
            (roll * rand(1..self.damage)) + modifier(self.dexterity)
        end

        def roll_strength #use for melee attack rolls and any strength checks
            (roll_20) + (modifier(self.strength))
        end
        
        def roll_dexterity #use for range attack and escape roll and any dexterity checks 
            roll_20 + modifier(self.dexterity)
        end

        def roll_initiative #used to decide the order of combat
            self.update(initiative: (self.roll_20 + modifier(self.dexterity) ) ) 
        end

        def modifier(attribute) #calculates attribute modifiers 
            case  attribute 
                when 1 ; -5 ; when 2..3 ; -4 ; when 4..5 ; -3 ; when 6..7 ; -2 ; when 8..9 ; -1 ; when 10..11 ; 0
                when 12..13 ; 1 ; when 14..15 ; 2 ; when 16..17 ; 3 ; when 18..19 ; 4 ; when 20..21 ; 5 
                when 22..23 ; 6 ; when 24..25 ; 7 ; when 26..27 ; 8 ; when 28..29 ; 9 ; when 30..31 ; 10 
                when 32..33 ; 11 ;when 34..35 ; 12 ; when 36..37 ; 13 ; when 38..39 ; 14 ; when 40 ; 15
            end
        end

        def advantage(attribute)  #plug in combatant.attribute
            rolls = [ self.roll_20 , self.roll_20 ]
            rolls.max + modifier(attribute) 
        end

        def disadvantage(attribute) #plug in combatant.attribute
            rolls = [ self.roll_20 , self.roll_20 ]
            rolls.min + modifier(attribute)
        end

        # def attribute_range(attribute)
        #     (self.(attribute)) = (self.(attribute).clamp(0, 30))
        #     self.save 
        # end

        # def attribute_up(attribute, n)
        #     self.(attribute) + n ; 
        #     self.attribute_range(self.(attribute))
        #     self.save
        # end

        # def attribute_down(attribute, n )
        #     self.(attribute) - n 
        #     self.attribute_range(self.(attribute))
        #     self.save
        # end
    
    #end
           
end