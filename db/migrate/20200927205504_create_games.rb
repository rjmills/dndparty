class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :creator_id, null: false
      t.integer :discord_id
      t.string :name, null: false
      t.text :description
      t.text :tabletop_link
      t.text :character_link

      t.timestamps null: false
    end

    add_index :games, :name
  end
end
