class Team < ActiveRecord::Base
  attr_accessible :teamname
  has_many :players


  def count
  	players.count
  end
  
end
