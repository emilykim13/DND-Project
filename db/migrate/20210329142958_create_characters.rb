class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level, default: 1
      #t.string :class, default: "Fighter"
      #t.string :race, default: "Human"
      t.integer :damage, default:1
      #t.integer :dice_rolls, default: 1
      #t.integer :damage_dice, default: 1 
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armor_rating, default: 10
      t.integer :max_hp
      t.integer :current_hp
      t.integer :temporary_hp
      t.integer :experience, default: 0
      t.integer :surprise, default: 0
      t.integer :initiative, default: 0
      t.integer :user_id
      t.integer :campaign_id

      t.timestamps
    end
  end
end


# Character attributes: strength, dexterity, constitution, intelligence, wisdom, charisma, armor class, initiative, 
# speed, maximum health points, current health points, temporary health points, levels, hit dice (dice that you roll 
# when you level to decide how health is increased), profession, experience, race