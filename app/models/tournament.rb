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
  
  def self.logo(level)
    case level
    when "pro": "tournament/logo_pro_tour.gif"
    when "master" : "tournament/logo_master_series.gif"
    when "international": "tournament/logo_international.gif"
    when "wcs": "tournament/logo_world_championship_series.gif"
    when "worldchamp": "tournament/logo_world_championships.gif"
    else "pro"
    end
  end
  
  def self.structure_descr(structure)
    case structure
    when "single": "Single Elimination Cup"
    when "double": "Double Elimination Cup"
    else "Unknown structure"
    end
  end
end
