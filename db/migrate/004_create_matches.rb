class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :team_a
      t.integer :team_b
      t.integer :tournament_id
      t.integer :round
      t.datetime :played_at
      t.string :scores
      t.integer :winner

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
