require 'maze_builder'

class StandardMazeBuilder
  include MazeBuilder

  def build_maze
    self.maze = StandardMaze.new
  end

  def build_room(room_index)
    room = StandardRoom.new(room_index)
    room.build_wall(Builder::Room::Sides::NORTH, StandardWall.new)
    room.build_wall(Builder::Room::Sides::SOUTH, StandardWall.new)
    room.build_wall(Builder::Room::Sides::WEST, StandardWall.new)
    room.build_wall(Builder::Room::Sides::EAST, StandardWall.new)
    get_maze.rooms.push room
    room
  end

  # @param room_from_index
  # @param room_to_index
  #
  def build_door(room_from_index, room_to_index)
    room_from = get_maze.rooms[room_from_index - 1]
    room_to   = get_maze.rooms[room_to_index - 1]

    result = StandardDoor.new(room_from, room_to)

    get_maze.doors.push result

    result
  end
end