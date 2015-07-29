class Fordward
  Y = 1

  def do_move position, mode
    new_position = position
    new_position[Y] += mode.calculate_displacement
    new_position
  end

  def do_turn bearing
    bearing 
  end
end