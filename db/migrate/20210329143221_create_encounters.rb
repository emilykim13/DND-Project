class CreateEncounters < ActiveRecord::Migration[6.1]
  def change
    create_table :encounters do |t|
      #t.integer :event
      t.integer :turn, default: 0
      t.integer :character_id
      t.integer :enemy_id

      t.timestamps
    end
  end
end
