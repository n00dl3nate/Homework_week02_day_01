class SportTeam
 attr_accessor :team_name, :players, :coach, :points

def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
end

def get_team_name
  return @team_name
end

def get_players
  return @players
end

def get_coach
  return @coach
end

def add_players(players)
  @players += players
end

def check_players(player)
  for person in @players
    if person == player
      return true
    else
      return false
    end
  end
end

def team_result(result)
  if result == "win"
    @points += 3
  elsif result == "draw"
    @points += 1
  end
end









end#
