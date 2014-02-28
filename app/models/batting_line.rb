class BattingLine < ActiveRecord::Base
  belongs_to :team
  belongs_to :player
  attr_accessible :fours, :playername, :runs, :sixes, :status, :total
end
