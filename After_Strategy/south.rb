class South
  
  def to_s
    :S
  end

  def left
    East.new
  end

  def right
    West.new
  end 
end