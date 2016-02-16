require 'prototype'

class ProfilePrototype
  include Prototype

  def klone
    Profile.new(prototype_object.id)
  end
end
