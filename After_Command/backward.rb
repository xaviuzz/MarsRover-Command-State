class Backward
  Y = 1
  STEP = 1

  def do position
    new_position = position
    new_position[Y] -= STEP
    new_position
  end
end