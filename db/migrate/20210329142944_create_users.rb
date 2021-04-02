class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      #image
      t.string :username
      t.string :password_digest
      #bio
      

      t.timestamps
    end
  end
end
