module Prototype
  include Abstract

  abstract :klone

  def initialize(prototype_object)
    self.prototype_object = prototype_object
  end

  attr_accessor :prototype_object
  private(:prototype_object=, :prototype_object)
end