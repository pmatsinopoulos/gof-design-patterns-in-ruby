require 'maze_factory'

class EnchantedMazeFactory
  include MazeFactory

  def make_maze
    EnchantedMaze.new
  end

  def make_wall
    EnchantedWall.new
  end

  def make_room(room_index)
    EnchantedRoom.new(room_index)
  end

  def make_door(room1, room2)
    EnchantedDoor.new(room1, room2)
  end
end