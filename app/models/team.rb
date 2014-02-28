class Team < ActiveRecord::Base
  attr_accessible :teamname
  has_many :players
end
