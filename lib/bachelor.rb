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
  new_name
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
