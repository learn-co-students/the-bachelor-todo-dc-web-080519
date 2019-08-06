require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestantz| 
    if contestantz["status"] == "Winner"  
      return contestantz["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
    data.each do |season, contestants|
      contestants.each do |contestant_hash|
        if contestant_hash["hometown"] == hometown
          count += 1
        end
      end
    end
    count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  # need this later for division, establishes as zero
  num_of_contestants = 0
  # need this later for division and also for iterating through loop
  # will increase in value as it continues looping
  data[season].each do |contestant_hash|
  #drills down to season and goes through each
    total_age += (contestant_hash["age"]).to_i
    # total_age grows in value as the loop searches the hash and hits an age
    # .to_i converts a string to an integer (whole number)
    num_of_contestants += 1
    # pushes number of contests up, iterating through the loop again
  end
  (total_age / num_of_contestants.to_f).round(0)
  # divides the total age by the number of contestants
  # .to_f converts a string to a "floating point number" (number with decimals?)
  # .round(0) rounds to the nearest whole number
end
