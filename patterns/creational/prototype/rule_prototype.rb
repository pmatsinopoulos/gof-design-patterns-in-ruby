class RulePrototype
  include Prototype

  def klone
    Rule.new(prototype_object.id)
  end
end