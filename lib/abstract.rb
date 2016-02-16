module Abstract
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def abstract (*methods)
      methods.each do |method|
        define_method method do
          raise NotImplementedError.new("You have to implement this method: ##{__callee__}")
        end
      end unless methods.nil?
    end
  end
end