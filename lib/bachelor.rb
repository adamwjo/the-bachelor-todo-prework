require "pry"
def get_first_name_of_season_winner(data, season)
  first_name = nil
  data[season].each do |value|
        if value["status"] == "Winner"
          first_name = value["name"]
    end
  end
  new_name = first_name.split()
  new_name.pop
  new_name.join
end

def get_contestant_name(data, occupation)
  new_name = nil
  data.each do |season, array|
    array.each do |hash|
      if hash["occupation"] == occupation
        new_name = hash["name"]
      end
    end
  end
  new_name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = nil
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] == hometown
        occupation = hash["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  average = 0
  data[season].each do |value|
    average += value["age"].to_f
  end
  average / 2
end
