class AddActiveToTournament < ActiveRecord::Migration
  def self.up
    add_column :tournaments, :active, :boolean
  end

  def self.down
    remove_column :tournaments, :active
  end
end
