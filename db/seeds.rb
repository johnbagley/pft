# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


teams = [
  {name: "New York Giants", division: "NFC East", conference: "NFC"},
  {name: "Washington Redskins", division: "NFC East", conference: "NFC"},
  {name: "Philadelphia Eagles", division: "NFC East", conference: "NFC"},
  {name: "Dallas Cowboys", division: "NFC East", conference: "NFC"},
  {name: "Chicago Bears", division: "NFC North", conference: "NFC"},
  {name: "Detroit Lions", division: "NFC North", conference: "NFC"},
  {name: "Green Bay Packers", division: "NFC North", conference: "NFC"},
  {name: "Minnesota Vikings", division: "NFC North", conference: "NFC"},
  {name: "Tampa Bay Buccaneers", division: "NFC South", conference: "NFC"},
  {name: "New Orleans Saints", division: "NFC South", conference: "NFC"},
  {name: "Carolina Panthers", division: "NFC South", conference: "NFC"},
  {name: "Atlanta Falcons", division: "NFC South", conference: "NFC"},
  {name: "San Francisco 49ers", division: "NFC West", conference: "NFC"},
  {name: "Arizona Cardinals", division: "NFC West", conference: "NFC"},
  {name: "St. Louis Rams", division: "NFC West", conference: "NFC"},
  {name: "Seattle Seahawks", division: "NFC West", conference: "NFC"},
  {name: "Buffalo Bills", division: "AFC East", conference: "AFC"},
  {name: "Miami Dolphins", division: "AFC East", conference: "AFC"},
  {name: "New England Patriots", division: "AFC East", conference: "AFC"},
  {name: "New York Jets", division: "AFC East", conference: "AFC"},
  {name: "Baltimore Ravens", division: "AFC North", conference: "AFC"},
  {name: "Cincinnati Bengals", division: "AFC North", conference: "AFC"},
  {name: "Cleveland Browns", division: "AFC North", conference: "AFC"},
  {name: "Pittsburgh Steelers", division: "AFC North", conference: "AFC"},
  {name: "Houston Texans", division: "AFC South", conference: "AFC"},
  {name: "Indianapolis Colts", division: "AFC South", conference: "AFC"},
  {name: "Jacksonville Jaguars", division: "AFC South", conference: "AFC"},
  {name: "Tennessee Titans", division: "AFC South", conference: "AFC"},
  {name: "Denver Broncos", division: "AFC West", conference: "AFC"},
  {name: "Kansas City Chiefs", division: "AFC West", conference: "AFC"},
  {name: "Oakland Raiders", division: "AFC West", conference: "AFC"},
  {name: "San Diego Chargers", division: "AFC West", conference: "AFC"}
]

Team.destroy_all

teams.each do |team|
  Team.create(team)
end
