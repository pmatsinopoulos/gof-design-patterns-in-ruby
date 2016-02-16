module Builder
  module Maze
    def number_of_rooms
      rooms.size
    end

    def rooms
      @rooms ||= []
    end

    def number_of_doors
      doors.size
    end

    def doors
      @doors ||= []
    end
  end
end