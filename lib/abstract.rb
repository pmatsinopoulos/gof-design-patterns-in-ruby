module Abstract
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def abstract (*methods)
      methods.each do |method|
        define_method method do
          raise NotImplementedError.new("You have to implement that in one of the subclasses of #{self.class.name}")
        end
      end unless methods.nil?
    end
  end
end