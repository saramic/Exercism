# frozen_string_literal: true

class Tournament
  TEAM_STRUCT = Struct.new(
    :name,
    :mp, :w, :d, :l, :p,
    keyword_init: true
  )
  OUTPUT_FORMAT = '%<title>-31s| %<mp>2s | %<w>2s | %<d>2s | %<l>2s | %<p>2s'

  def initialize(input)
    @teams = []
    input.split("\n").map(&method(:process_line))
  end

  def process_line(line)
    team_a, team_b, result = line.chomp.split(';')
    team_a = find_or_create(team_a)
    team_b = find_or_create(team_b)
    process_result(team_a, team_b, result)
  end

  def report
    "#{([header_line] + team_lines).join("\n")}\n"
  end

  def team_lines = @teams.then(&method(:sort_teams_by_points)).map(&method(:format_output))

  def find_or_create(team_name)
    found_team = @teams.find { |team| team.name == team_name }
    if found_team.nil?
      found_team = TEAM_STRUCT.new(name: team_name, mp: 0, w: 0, d: 0, l: 0, p: 0)
      @teams << found_team
    end
    found_team
  end

  def header_line = format(OUTPUT_FORMAT, title: 'Team', mp: 'MP', w: 'W', d: 'D', l: 'L', p: 'P')

  def format_output(team)
    format(
      OUTPUT_FORMAT,
      title: team.name, mp: team.mp, w: team.w, d: team.d, l: team.l, p: team.p
    )
  end

  def sort_teams_by_points(teams)
    if @teams.map { |team| team[:p] }.uniq.count > 1
      teams.sort_by { |team| [-team[:p], team[:name]] }
    else
      teams
    end
  end

  def process_result(team_a, team_b, result)
    match_played(team_a, team_b)
    case result
    when 'win'
      win(team_a, team_b)
    when 'loss'
      loss(team_a, team_b)
    when 'draw'
      draw(team_a, team_b)
    end
  end

  def match_played(team_a, team_b)
    team_a.mp += 1
    team_b.mp += 1
  end

  def win(team_a, team_b)
    team_a.w += 1
    team_b.l += 1
    team_a.p += 3
  end

  def loss(team_a, team_b)
    team_a.l += 1
    team_b.w += 1
    team_b.p += 3
  end

  def draw(team_a, team_b)
    team_a.d += 1
    team_b.d += 1
    team_a.p += 1
    team_b.p += 1
  end

  def self.tally(input)
    tournament = new(input)
    tournament.report
  end
end
