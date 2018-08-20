require "pry"
def get_first_name_of_season_winner(data, season)
  first_name = nil
  data.collect do |key, value|
    if key == season
      value.collect do |attribute, data|
        binding.pry
        if attribute.has_value?("winner")
          first_name = [attribute]["name"]
        end
      end
    end
  end
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
