class Team

  attr_reader :team_name, :players, :coach, :points
  attr_accessor :coach

  def initialize(team_name,players,coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(name)
    return @players.push(name)
  end

  def check_player(name)
    return @players.include?(name)
  end

  def final_result(won)
    return @points +=4 if won
  end

end
