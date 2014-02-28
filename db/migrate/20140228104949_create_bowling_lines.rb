class CreateBowlingLines < ActiveRecord::Migration
  def change
    create_table :bowling_lines do |t|
      t.string :bowlername
      t.integer :overs
      t.integer :noball
      t.integer :runs
      t.integer :wickets
      t.integer :wides
      t.references :team
      t.references :player

      t.timestamps
    end
    add_index :bowling_lines, :team_id
    add_index :bowling_lines, :player_id
  end
end
