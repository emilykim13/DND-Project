class CreateEnemies < ActiveRecord::Migration[6.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :damage, default: 1
      # t.integer :dice_rolls, default: 1
      # t.integer :damage_dice, default: 1 
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armor_rating 
      t.integer :challenge_rating, default: 0
      t.integer :max_hp
      t.integer :current_hp
      t.integer :experience_value, default: 3
      t.integer :initiative, default: 0
      t.integer :user_id
      t.integer :campaign_id

      t.timestamps
    end
  end
end
