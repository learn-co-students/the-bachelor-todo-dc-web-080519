require 'pry'

def get_all_contestants(data)
  all_contestants = []
  data.each do |season_num, contestants|
    #binding.pry
    contestants.each do |stats|
      #binding.pry
      all_contestants.push(stats)   
    end
  end
  #binding.pry
  return all_contestants
end   


def get_first_name_of_season_winner(data, season)
  # code here
  winner = data[season].find do |contestants|
    contestants["status"] == "Winner"
  end
  return winner["name"].split[0]
end

def get_contestant_name(data, occupation)
  # code here
  get_all_contestants(data).each do |stats|
    if occupation == stats["occupation"]
      return stats["name"]
    end
  end
end  


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  get_all_contestants(data).each do |stats|
     if stats["hometown"] == hometown
       counter += 1
     end
    end
    #binding.pry
    return counter    
end

def get_occupation(data, hometown)
  job_match = get_all_contestants(data).find do |stats|
    stats["hometown"] == hometown
  end
  #binding.pry
  return job_match["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  contestant_age_total = 0
  data[season].each do |contestants|
    contestant_age_total += (contestants["age"]).to_i
    #binding.pry
    counter += 1
    #binding.pry
  end
  #binding.pry
  return ((contestant_age_total)/counter.to_f).round(0)
end
