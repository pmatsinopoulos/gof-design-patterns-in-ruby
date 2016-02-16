class Document
  def initialize(name)
    self.name = name
  end

  def open
  end

  def paste
  end

  attr_accessor :name
  private(:name=, :name)
end