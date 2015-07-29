class Fordward
  Y = 1
  STEP = 1

  def do_move position
    new_position = position
    new_position[Y] += STEP
    new_position
  end

  def do_turn bearing
    bearing 
  end
  
end