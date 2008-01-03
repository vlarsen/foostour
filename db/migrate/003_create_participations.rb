class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.integer :player_id
      t.integer :tournament_id
      t.integer :rank
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
