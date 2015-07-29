class North
  
  def to_s
    :N
  end

  def left
    West.new
  end

  def right
    East.new
  end 
end