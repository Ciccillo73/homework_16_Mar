require('minitest/autorun')
require('minitest/reporters')

require_relative('../team_class')

class TestTeam < MiniTest::Test


  def setup()
    @team = Team.new("Toronto", ["Franky","Pippen","Jordan"],"Boris")
  end

  def test_has_name()
    assert_equal("Toronto", @team.team_name())
  end

  def test_has_players()
    assert_equal(3, @team.players().count())
  end

  def test_has_coach()
    assert_equal("Boris", @team.coach())
  end

  def test_can_change_coach()
    @team.coach = "John"
    assert_equal("John", @team.coach())
  end

  def test_can_add_player()
    result = @team.add_player("Antonio")
    assert_equal(4, result.count())
  end

  def test_check_player_in_team_found()
    result = @team.check_player("Pippen")
    assert_equal(true, result)
  end

  def test_check_player_in_team_not_found()
    result = @team.check_player("Andrew")
    assert_equal(false, result)
  end

  def test_final_result_win()
    @team.final_result(true)
    assert_equal(4, @team.points())
  end

  def test_final_result_lost()
    @team.final_result(false)
    assert_equal(0, @team.points())
  end

end
