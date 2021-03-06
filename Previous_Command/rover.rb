class Rover

  DEFAULT_POSITION = [0,0]
  DEFAULT_BEARING = :N
  Y = 1
  STEP = 1
  @rover_position

  def initialize()
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
      case command
      
      when :f 
        move_forward
      
      when :b 
        move_backward
      
      end
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