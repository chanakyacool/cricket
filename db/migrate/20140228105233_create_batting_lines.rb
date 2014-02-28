class CreateBattingLines < ActiveRecord::Migration
  def change
    create_table :batting_lines do |t|
      t.string :playername
      t.integer :runs
      t.integer :sixes
      t.integer :fours
      t.string :status
      t.integer :total
      t.references :team
      t.references :player

      t.timestamps
    end
    add_index :batting_lines, :team_id
    add_index :batting_lines, :player_id
  end
end
