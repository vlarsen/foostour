class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :team_a_id
      t.integer :team_b_id
      t.integer :tournament_id
      t.integer :round
      t.datetime :played_at
      t.string :scores
      t.integer :winner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
