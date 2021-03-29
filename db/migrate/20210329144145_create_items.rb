class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.cost :cost
      t.float :weight

      t.timestamps
    end
  end
end
