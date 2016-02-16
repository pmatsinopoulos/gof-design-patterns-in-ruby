module Builder
  module Room
    module Sides
      NORTH = 'N'
      SOUTH = 'S'
      WEST  = 'W'
      EAST  = 'E'
    end

    def initialize(room_index)
      self.room_index = room_index
    end
    attr_accessor :room_index

    # @param side {Builder::Room::Sides::NORTH | WEST | SOUTH | EAST}
    # @param wall {Builder::Wall}
    #
    def build_wall(side, wall)
      @walls ||= {}
      @walls[side] = wall
    end
  end
end

