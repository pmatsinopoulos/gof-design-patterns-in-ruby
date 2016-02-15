class MySingleton
  private_class_method(:new)

  def self.instance
    @@_instance ||= self.send(:new)
  end
end

