class SportsTeam

  attr_reader(:team_name, :players)
  attr_accessor(:coach_name)

  def initialize(input_team_name, input_players, input_coach_name)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach_name
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def find_player_by_name(player_to_find)
    for player in @players
      return true if player == player_to_find
    end
    return false
  end

end
