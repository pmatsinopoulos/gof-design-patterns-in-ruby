class Profile
  def initialize(id)
    self.id = id
  end

  def eql?(other)
    id == other.id
  end

  attr_accessor :id
end