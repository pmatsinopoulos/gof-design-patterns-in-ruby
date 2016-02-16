class MacroCommand < Command
  # @param command {Command}
  #
  def add(command)
    commands.push command
    self
  end

  # @param command {Command}
  #
  def remove(command)
    commands.delete_if {|c| c == command}
    self
  end

  def execute
    commands.each {|c| c.execute}
  end

  private

  def commands
    @commands ||= []
  end
end
