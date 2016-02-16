require 'maze_factory'

class BombedMazeFactory
  include MazeFactory


  def make_maze
    BombedMaze.new
  end

  def make_wall
    BombedWall.new
  end

  def make_room(room_index)
    BombedRoom.new(room_index)
  end

  # @param room1 {BombedRoom}
  # @param room2 {BombedRoom}
  #
  def make_door(room1, room2)
    BombedDoor.new(room1, room2)
  end
end