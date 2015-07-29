class Backward
  Y = 1

  def do_move position, mode
    new_position = position
    displacement = calculate_displacement mode
    new_position[Y] -= displacement
    new_position
  end

  def do_turn bearing 
    bearing
  end

private 
  
  def calculate_displacement mode
    if mode == :run 
      return 2
    else
      return 1
    end
  end

end