require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
      fullName = contestants[0]["name"]
      return fullName.split(' ')[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # iterate through seasons
  # iterate through contestants
  # iterate through contestant
  # find occupation == ocupation
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # create counter
  # iterate through seasons
  # iterate through contestants
  # iterate through contestant
  # hometown == hometown? counter += 1
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  totalAge = 0
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        totalAge += contestant["age"].to_f
        counter += 1
      end
    end
  end
  (totalAge/counter).round
end

# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }