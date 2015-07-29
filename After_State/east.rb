class East
  
  def to_s
    :E
  end

  def left
    North.new
  end

  def right
    South.new
  end 
end