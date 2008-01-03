class Tournament < ActiveRecord::Base
  has_many :participations, :order => "rank ASC"
  has_many :players, :through => :participations
end
