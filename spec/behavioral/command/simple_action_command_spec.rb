require 'spec_helper'

describe SimpleActionCommand do
  let(:action) { :foo }
  let(:receiver) {
    klass = Class.new
    klass.class_eval <<-EVAL
      define_method "#{action}" do
      end
    EVAL
    klass.new
  }
  subject do
    SimpleActionCommand.new(receiver, action)
  end

  describe '#execute' do
    it 'calls the action on the receiver' do
      expect(receiver).to receive(action)

      # fire
      subject.execute
    end
  end
end