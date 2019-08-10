require ('pry')

def get_first_name_of_season_winner(data, season)

  data.each do |current_season,people_array|
    if current_season == season
        people_array.each do |person|
          if person["status"] == "Winner"
            name = person["name"].split(' ')
            return name[0]
          end
        end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |current_season, people_array|
    people_array.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |current_season, people_array|
    people_array.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |current_season, people_array|
    people_array.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  amount_of_people = 0
  data.each do |current_season, people_array|
    if current_season == season
      people_array.each do |person|
        sum += person["age"].to_i
        amount_of_people += 1
      end
    end
  end
  # binding.pry
   total_average = sum/amount_of_people.to_f
   return total_average.round
end
puts "testing"
