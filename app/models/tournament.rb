class Tournament < ActiveRecord::Base
  has_many :participations, :order => "rank ASC"
  has_many :players, :through => :participations, :order => "firstname ASC"

  has_many :matches, :order => "played_at ASC"
  
  def self.all_active
    find(:all, :conditions => "active == 't'", :order => "startdate ASC")
  end
  def played_matches
    matches.select {|m| m.scores != ""}
  end
  def unplayed_matches
    matches.select {|m| m.scores == ""}
  end
end
