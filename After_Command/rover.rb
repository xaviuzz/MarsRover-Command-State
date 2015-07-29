require_relative "fordward"
require_relative "backward"

class Rover

  DEFAULT_POSITION = [0,0]
  DEFAULT_BEARING = :N
  Y = 1
  STEP = 1

  def initialize()
    @instructions={
      :f => Fordward.new,
      :b => Backward.new
    }
    @rover_position = DEFAULT_POSITION.clone
  end

  def where_are_you
    @rover_position
  end

  def what_is_your_bearing
    DEFAULT_BEARING
  end

  def execute_commands(commands)
    commands.each do |command|
      @rover_position = @instructions[command].do(@rover_position)
    end
  end

end