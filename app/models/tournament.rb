class Tournament < ActiveRecord::Base
  has_many :participations, :order => "rank ASC"
  has_many :players, :through => :participations, :order => "firstname ASC"

  has_many :matches, :order => "played_at ASC"
  
  def played_matches
    matches.select {|m| m.scores != ""}
  end
  def unplayed_matches
    matches.select {|m| m.scores == ""}
  end
end
