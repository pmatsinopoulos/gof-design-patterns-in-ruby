module MazeFactory
  include Abstract

  abstract :make_maze, :make_wall

  def make_room(room_index)
    raise NotImplementedError.new("You have to implement this method: #{__callee__}")
  end

  def make_door(room1, room2)
    raise NotImplementedError.new("You have to implement this method: #{__callee__}")
  end
end