require_relative "fordward"
require_relative "backward"
require_relative "left"
require_relative "right"
require_relative "north"
require_relative "east"
require_relative "west"
require_relative "south"
require_relative "walk"
require_relative "run"

class Rover

  DEFAULT_POSITION = [0,0]
  DEFAULT_BEARING = North.new

  def initialize()
    @instructions={
      :f => Fordward.new,
      :b => Backward.new,
      :l => Left.new,
      :r => Right.new
    }
    @rover_position = DEFAULT_POSITION.clone
    @bearing = DEFAULT_BEARING
    @mode = Walk.new
  end

  def where_are_you
    @rover_position
  end

  def what_is_your_bearing
    @bearing.to_s
  end

  def execute_commands(commands)
    commands.each do |command|
      @rover_position = @instructions[command].do_move(@rover_position, @mode)
      @bearing = @instructions[command].do_turn(@bearing)
    end
  end

  def activate_running
    @mode = Run.new
  end

end