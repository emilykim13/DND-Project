class Encounter < ApplicationRecord
    belongs_to :character
    belongs_to :enemy

    accepts_nested_attributes_for :character
    accepts_nested_attributes_for :enemy

    def character_attack_lands?
       self.character.roll_strength > self.enemy.armor_rating   
    end

    def character_attack(roll)
        self.enemy.take_damage(self.character.melee_damage(roll))
    end 

    def enemy_attack_lands?
        self.enemy.roll_strength > self.character.armor_rating   
    end

    def enemy_attack(roll)
        self.character.take_damage(self.enemy.melee_damage(roll))
    end 

    def still_fighting?
       self.character.alive? && self.enemy.alive?
    end

    def heal_character(n)
        self.character.heal(n)
    end

    def heal_enemy(n)
        self.enemy.heal(n)
    end

    def roll_20
        rand(1..20)
    end

    def participants 
        [self.character, self.enemy]
    end

    def roll_initiatives
        self.participants.each{|p| p.roll_initiative}
    end

    def order_by_initiatives
        self.participants.sort{|p| p.initiative}
    end

    def battle_count
        self.participants.count - 1
    end

    def new_round
        self.update(turn: 0)
    end

    def cycle_turn
        self.turn.clamp(0, self.battle_count )
        if self.turn < self.battle_count
            self.turn += 1
        else 
            self.turn = 0
        end
        self.save
    end

    def experience_reward
        self.character.gain_experience(self.enemy.experience_value)
    end

    def character_level
        self.character.level_up
    end

    def character_escape 
        self.character.roll_dexterity > self.enemy.roll_20 + self.enemy.modifier(self.enemy.dexterity)
    end

    def participant
         self.order_by_initiatives[self.turn]
    end

       
end

#can be conversational or combative