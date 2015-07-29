class Right

  def do_move position
    position
  end

  def do_turn bearing
    return :E if bearing == :N 
    return :N if bearing == :W 
    return :W if bearing == :S 
    return :S if bearing == :E
  end
  
end