require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")
    assert_equal("Celtic", sports_team.get_name())
  end

  def test_get_players
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")
    assert_equal(["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], sports_team.get_players())
  end

  def test_get_coach_name
    sports_team = SportsTeam.new("Celtic", ["Jimmy Johnson", "Henrik Larsson", "Mousa Dembele"], "Brendan Rodgers")
    assert_equal("Brendan Rodgers", sports_team.get_coach_name())
  end

end
