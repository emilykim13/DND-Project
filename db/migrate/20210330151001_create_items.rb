class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :cost
      t.float :weight
      t.integer :damage_dice, default: 0 # 4 6 8 10 12
      t.integer :roll, default: 1
      t.integer :armor, default: 0 # lowest is 11 (2 for shield)

      t.timestamps
    end
  end
end