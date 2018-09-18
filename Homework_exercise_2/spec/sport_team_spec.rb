require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestSportTeam < MiniTest::Test

  def setup
    @sport_team = SportTeam.new("Liverpool",
   ["Jack","Tom","Billy","Sam","Nate"], "Bill", 0)
  end

  def test_get_team_name
    result = @sport_team.get_team_name
    assert_equal("Liverpool",result)
  end

  def test_get_team_players
    result = @sport_team.get_players
    assert_equal(["Jack","Tom","Billy","Sam","Nate"],result)
  end

  def test_get_team_coach
    result = @sport_team.get_coach
    assert_equal("Bill",result)
  end

  def test_change_coach_name
    @sport_team.coach = "Daniel"
    result = @sport_team.get_coach
    assert_equal("Daniel",result)
  end

  def test_add_players
    @sport_team.add_players(["Craig","Adam"])
    result = @sport_team.players.length
    assert_equal(7,result)
  end

  def test_check_players
    result = @sport_team.check_players("Jack")
    assert_equal(true, result)
  end


  def test_team_result_win
    @sport_team.team_result("win")
    result = @sport_team.points
    assert_equal(3,result)
  end

  def test_team_result_draw
    @sport_team.team_result("draw")
    result = @sport_team.points
    assert_equal(1,result)
  end



end
