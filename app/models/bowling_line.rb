class BowlingLine < ActiveRecord::Base
  belongs_to :team
  belongs_to :player
  attr_accessible :bowlername, :noball, :overs, :runs, :wickets, :wides
end
