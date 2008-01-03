class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :country
      t.string :gender
      t.date :birthdate

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
