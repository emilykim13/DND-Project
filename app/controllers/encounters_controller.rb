class EncountersController < ApplicationController
    before_action :find_encounter, exccept: [:new, :index ]
    before_action :find_character, exccept: [:new, :index ]
    before_action :find_enemy, exccept: [:new, :index ]


    def enter_combat
        @encounter.new_round
        @encounter.heal_enemy(@enemy.max_hp)
        @encounter.roll_initiatives 
        redirect_to "/encounters/in_combat/#{params[:id]}"
    end

    def in_combat
        if @encounter.still_fighting? == false
            redirect_to "/encounters/end_combat/#{params[:id]}"
        end
    end

    def end_combat
        if @character.alive? && !@enemy.alive?
            @encounter.experience_reward 
            @encounter.character_level
        end
    end

    def escape_combat
        if @encounter.character_escape
            redirect_to "/encounters/end_combat/#{params[:id]}"
        else 
            @encounter.cycle_turn
            redirect_to "/encounters/in_combat/#{params[:id]}"
        end
    end    
            

    def character_attack 
       if @encounter.character_attack_lands?
            @encounter.character_attack(1, 6)
            flash[:alert] = "attack Landed"
            @encounter.cycle_turn
            redirect_to "/encounters/in_combat/#{params[:id]}"
       else
            flash[:alert] = "attack Missed"
            @encounter.cycle_turn
            redirect_to "/encounters/in_combat/#{params[:id]}"
       end
    end

    def enemy_attack
        if @encounter.enemy_attack_lands?
            @encounter.enemy_attack(1, 6)
            flash[:alert] = " attack Landed"
            @encounter.cycle_turn
            redirect_to "/encounters/in_combat/#{params[:id]}"
        else
            flash[:alert] = "attack Missed"
            @encounter.cycle_turn
            redirect_to "/encounters/in_combat/#{params[:id]}"
        end
    end

    def character_heal
        @encounter.heal_character(rand(1..10) )
        @encounter.cycle_turn
        redirect_to "/encounters/in_combat/#{params[:id]}"
    end

    def enemy_heal
        @encounter.heal_enemy(rand(1..10) )
        @encounter.cycle_turn
        redirect_to "/encounters/in_combat/#{params[:id]}"
    end


    private

        def find_encounter
            @encounter = Encounter.find(params[:id])
        end

        def find_character
            @character = @encounter.character
        end

        def find_enemy
            @enemy = @encounter.enemy
        end

        def encounter_params
            params.require(:encounter).permit(:character, :enemy)
        end

   
end
