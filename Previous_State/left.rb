class Left

  def do_move position
    position
  end

  def do_turn bearing
    return :W if bearing == :N 
    return :S if bearing == :W 
    return :E if bearing == :S 
    return :N if bearing == :E
  end
  
end