# This is a +SimpleActionCommand+ class that will allow you to create simple command objects,
# that they are initialized with a receiver and an action the receiver responds to
#
class SimpleActionCommand < Command
  # @param receiver {Object} Any object instance that responds to +action+
  # @param action   {Symbol} The symbol that the +receiver+ responds_to.
  #
  def initialize(receiver, action)
    self.receiver = receiver
    self.action   = action
  end

  def execute
    receiver.send action
  end

  attr_accessor :action, :receiver
  private :action=, :action, :receiver=, :receiver
end
