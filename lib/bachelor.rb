require "pry"

def get_first_name_of_season_winner(data, season)
  # find winner of given season
  full_name = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end["name"]
  # split first name and last name
  split_name = full_name.split(' ')
  # return first name of winner
  split_name[0]
end

def loop_contestants(data, criterion)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant[criterion] == "sought thing"
        # do code here with yield?
        return 0
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # loop over each contestant
  data.each do |season, contestants|
    contestants.each do |contestant|
      # return first contestant w matching occupation
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # initalize counter
  counter = 0
  # loop over each contestant
  data.each do |season, contestants|
    contestants.each do |contestant|
      # count up each contestant with matching hometown
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  # return counter
  counter
end

def get_occupation(data, hometown)
  # loop over each contestant
  data.each do |season, contestants|
    contestants.each do |contestant|
      # return occupation of first contestant with matching hometown
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # initalize variables
  total_age = 0
  total_contestants = 0

  # loop over all contestants in given season
  data[season].each do |contestant|
    # add ages up and increment total contestant counter
    total_age += contestant["age"].to_f
    total_contestants += 1
  end

  # once all contestants accounted for, average results
  avg_age = (total_age / total_contestants).round
end
