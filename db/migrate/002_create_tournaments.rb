class CreateTournaments < ActiveRecord::Migration
  def self.up
    create_table :tournaments do |t|
      t.string :name
      t.string :structure
      t.string :level
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end

  def self.down
    drop_table :tournaments
  end
end
