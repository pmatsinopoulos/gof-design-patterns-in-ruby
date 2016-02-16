class PasteCommand < Command
  # @param document {Document}
  #
  def initialize(document)
    self.document = document
  end

  def execute
    document.paste
  end

  attr_accessor :document
  private(:document=, :document)
end