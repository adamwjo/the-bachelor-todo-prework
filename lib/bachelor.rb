require "pry"
def get_first_name_of_season_winner(data, season)
  first_name = " "
  data.collect do |key, value|
    if key == season
      value.collect do |attribute, data|
        if attribute.include?("status" => "winner")
          first_name = season[attribute]["name"]
        end
      end
    end
  end
  first_name
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
