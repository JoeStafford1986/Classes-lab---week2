require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")

    assert_equal("Celtic", sports_team.team_name())
  end

  def test_get_players
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")

    assert_equal(["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], sports_team.players())
  end

  def test_get_coach_name
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")

    assert_equal("Brendan Rodgers", sports_team.coach_name())
  end

  def test_set_coach_name
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")
    sports_team.coach_name = "Tommy Burns"
    assert_equal("Tommy Burns", sports_team.coach_name())
  end

  def test_add_player
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")
    sports_team.add_player("Scott Brown")
    assert_equal(["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele", "Scott Brown"], sports_team.players())
  end

  def test_find_player_by_name
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")

    assert_equal(true, sports_team.find_player_by_name("Henrik Larsson"))
  end

end
