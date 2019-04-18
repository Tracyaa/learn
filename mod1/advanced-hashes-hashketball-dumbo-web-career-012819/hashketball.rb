require "pry"

def game_hash
  two_teams = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12,
                            :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
        "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12,
                          :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19,
                          :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12,
                          :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2,
                          :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1,
                          :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
        "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4,
                             :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
        "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12,
                           :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3,
                         :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12,
                              :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
      }
    }
  }
  two_teams
end

def num_points_scored(player)
  game_hash.each do |team, team_data|
    team_data[:players].each do |name, name_hash|
      if name == player
        return name_hash[:points]
      end
    end
  end
end

def player_by_number(number) #33
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player, player_hash|
      binding.pry
      if number == player_hash[:number]
        return player
      end
    end
  end
end

puts player_by_number(33)


def shoe_size(player)
  game_hash.each do |team, team_data|
    team_data[:players].each do |names, name_hash|
      if names == player
        return name_hash[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |team, team_data|
    if team_data[:team_name] == team_name
      return team_data[:colors]
    end
  end
end

def team_names
  arr = []
  game_hash.each do |team, team_hash|
    arr << team_hash[:team_name]
  end
  return arr
end

def player_numbers(team_name)
  num_arr = []
  game_hash.each do |team, team_hash|
    if team_hash[:team_name] == team_name
      team_hash[:players].each do |player, player_hash|
        num_arr << player_hash[:number]
      end
    end
  end
  return num_arr.sort
end

def player_stats(name)
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player, player_hash|
      if player === name
        return player_hash
      end
    end
  end
end

def big_shoe_rebounds
  largest_feet_player = ""
  largest_size = 0
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player, player_hash|
      if player_hash[:shoe] > largest_size
        largest_size = player_hash[:shoe]
        largest_feet_player = player
      end
    end
    return team_hash[:players][largest_feet_player][:rebounds]
  end
end

def most_points_scored
  most_score = 0
  the_person = ""
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player, player_hash|
      if player_hash[:points] > most_score
        most_score = player_hash[:points]
        the_person = player
      end
    end
  end
  return the_person
end

def winning_team
  winner = ""
  winner_score = 0
  game_hash.each do |team, team_hash|
    score = 0
    team_hash[:players].each {|person, hash| score += hash[:points]}
    if score > winner_score
      winner_score = score
      winner = team_hash[:team_name]
    end
  end
  return winner
end

def player_with_longest_name
  name_arr = []
  game_hash.each do |team, team_hash|
    name_arr << team_hash[:players].keys
  end
  name_arr.flatten.sort_by {|name| name.length}.last
end

def long_name_steals_a_ton?
  most_steal = 0
  the_person = ""
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player, player_hash|
      if player_hash[:steals] > most_steal
        most_steal = player_hash[:steals]
        the_person = player
      end
    end
  end
  player_with_longest_name == the_person
end
