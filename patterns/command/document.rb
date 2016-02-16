class Document
  def initialize(name)
    self.name = name
  end

  def open
  end

  attr_accessor :name
  private(:name=, :name)
end