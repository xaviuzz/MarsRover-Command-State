class West
  
  def to_s
    :W
  end

  def left
    South.new
  end

  def right
    North.new
  end 
end