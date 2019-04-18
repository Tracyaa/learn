# require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |player|
    if player["status"] == "Winner"
      return player["name"].split.first
    end
  end
  #only first name
end

def get_contestant_name(data, occupation)
  data.each do |season, ppl_arr|
    ppl_arr.each do |ppl_hash|
      if ppl_hash["occupation"] == occupation
        return ppl_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, ppl_arr|
    ppl_arr.each do |ppl_hash|
      if ppl_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, ppl_arr|
    ppl_arr.each do |ppl_hash|
      if ppl_hash["hometown"] == hometown
        return ppl_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  count = 0
  data[season].each do |hash_arr|
    hash_arr.each do |person|
      total_age += hash_arr["age"].to_i
      count += 1
    end
  end
  # binding.pry
  return (total_age.to_f / count).round
end
