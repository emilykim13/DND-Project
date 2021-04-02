class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      #t.string :difficulty
      t.string :description
      # t.string :dialogue, array: true, default: []
      # t.string :response, array: true, default: []
      t.text :dialogue, default: [].to_yaml
      t.text :response, default: [].to_yaml

      t.timestamps
    end
  end
end
