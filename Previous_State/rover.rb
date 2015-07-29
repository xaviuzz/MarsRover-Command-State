require_relative "fordward"
require_relative "backward"
require_relative "left"
require_relative "right"

class Rover

  DEFAULT_POSITION = [0,0]
  DEFAULT_BEARING = :N
  Y = 1
  STEP = 1

  def initialize()
    @instructions={
      :f => Fordward.new,
      :b => Backward.new,
      :l => Left.new,
      :r => Right.new
    }
    @rover_position = DEFAULT_POSITION.clone
    @bearing = DEFAULT_BEARING
  end

  def where_are_you
    @rover_position
  end

  def what_is_your_bearing
    @bearing
  end

  def execute_commands(commands)
    commands.each do |command|
      @rover_position = @instructions[command].do_move(@rover_position)
      @bearing = @instructions[command].do_turn(@bearing)
    end
  end

end