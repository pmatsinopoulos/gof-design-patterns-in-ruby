module MazeBuilder
  def build_maze
    raise_not_implemented_error
  end

  def build_room(room_index)
    raise_not_implemented_error
  end

  def build_door(room_from_index, room_to_index)
    raise_not_implemented_error
  end

  def get_maze
    @maze ||= build_maze
  end

  attr_writer :maze

  private

  def raise_not_implemented_error
    raise NotImplementedError.new("You have to implement '#{caller_label}' in your class: #{self.class.name}")
  end
end
