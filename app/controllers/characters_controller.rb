class CharactersController < ApplicationController
    before_action :find_character, only: [:show, :edit, :update, :destroy]
    before_action :inventory, only: [:show]
    # before_action :instances, only: [:show, :edit, :update, :destroy]
    # before_action :weapon, only: [:update, :edit]

    def index
        @characters = Character.all
        @user = User.find(session[:user_id])
    end

    def show
        @character = Character.find(params[:id])
        # byebug
    end


    def new
        @character = Character.new
    end

    def create 
       @character = Character.create(character_params)
       @character.save
        # byebug
       redirect_to @character
    end

    # def update
    #     @character.update(character_params)
    #     redirect_to @character
    # end

    def update
        @character = Character.create(character_params)
        if @character.valid?
            redirect_to @character
        else
            render :edit
        end
    end

    def destroy
        @character.delete 
        redirect_to characters_path
    end


# item code


    def inventory # method that returns an array of items
        @inventory = @character.item_ids.map {|one| Item.find(one)}
    end

    def consume_item
    end

    def equip_weapon
    end
    
    def equip_shield
    end

    def weapon
      @character = Character.find(params[:character_id])
      @weapon = Item.find(params[:character][:item_ids])
      if @weapon
        @character.damage = @weapon.damage_dice
        @character.save
        redirect_to character_path(@character)
      else 
        redirect_to character_path(@character)
      end
    end

    def shield
      @character = Character.find(params[:character_id])
      @shield = Item.find(params[:character][:item_ids])
      if @shield
        @character.armor_rating = @shield.armor
        # @character.weight + @shield.weight ()
        @character.save
        redirect_to character_path(@character)
      else 
        redirect_to character_path(@character)
      end
    end

    private 

    # def instances
    #     @weapons = Item.all.select {|item| item.damage_dice >= 4}
    #     @shields = Item.all.select {|item| item.armor >= 11}
    # end


    def find_character
        @character = Character.find(params[:id])
    end

    def character_params
        params.require(:character).permit(:name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_rating, :challenge_rating, :max_hp, :current_hp, :experience_value, :user_id, :campaign_id, :item_ids => [], items_attributes: [:name, :cost, :weight, :damage_dice, :roll, :armor])
    end


end
