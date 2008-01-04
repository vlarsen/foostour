class Player < ActiveRecord::Base
  has_many :participations
  has_many :tournaments, :through => :participations
  
  has_many :matches_as_a, :class_name => "Match", :foreign_key => "team_a_id"
  has_many :matches_as_b, :class_name => "Match", :foreign_key => "team_b_id"
  has_many :matches_won, :class_name => "Match", :foreign_key => "winner_id"

  def fullname
    firstname + " " + lastname
  end
end
