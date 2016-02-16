module Builder
  module Door
    # @param room_from {Room}
    # @param room_to   {Room}
    #
    def initialize(room_from, room_to)
      self.room_from = room_from
      self.room_to   = room_to
    end

    attr_accessor :room_from, :room_to
  end
end