# This is a +SimpleCommand+ class that will allow you to create simple command objects,
# that they are initialized with a receiver that responds to +action+
#
class SimpleCommand < Command
  # @param receiver {Receiver}
  #
  def initialize(receiver)
    self.receiver = receiver
  end

  def execute
    receiver.action
  end

  attr_accessor :receiver
  private(:receiver=, :receiver)
end
