class Player < ActiveRecord::Base
  has_many :participations
  has_many :tournaments, :through => :participations
  
  def fullname
    firstname + " " + lastname
  end
end
