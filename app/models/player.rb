class Player < ActiveRecord::Base
  attr_accessible :playername
  belongs_to :team
end
