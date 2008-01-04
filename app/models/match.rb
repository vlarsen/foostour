class Match < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :player_a, :class_name => "Player", :foreign_key => "team_a_id"
  belongs_to :player_b, :class_name => "Player", :foreign_key => "team_b_id"
  belongs_to :winner, :class_name => "Player", :foreign_key => "winner_id"
end
