class Team < ActiveRecord::Base
  has_many :articles

  DIVISIONS = [
    "NFC East",
    "NFC North",
    "NFC South",
    "NFC West",
    "AFC East",
    "AFC North",
    "AFC South",
    "AFC West",
  ]

  def self.divisions
    teams = []
    DIVISIONS.each do |division|
      teams << where(division: division)
    end

    teams
  end
end
