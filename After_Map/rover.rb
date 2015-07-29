class Rover

  DEFAULT_POSITION = [0,0]
  DEFAULT_BEARING = :N
  Y = 1
  STEP = 1
  @rover_position

  def initialize()

    @instructions={
      :f => lambda {move_forward} ,
      :b => lambda {move_backward}
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
      @instructions[command].call
    end
  end

private
  
  def move_forward
    @rover_position[Y] += STEP
  end

  def move_backward
    @rover_position[Y] -= STEP
  end

end