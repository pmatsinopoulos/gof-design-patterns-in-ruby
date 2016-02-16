require 'spec_helper'

describe SimpleCommand do
  let(:receiver) {
    klass = Class.new.include Receiver
    klass.new
  }

  subject do
    SimpleCommand.new(receiver)
  end

  describe '#execute' do
    it 'calls the action on the receiver' do
      expect(receiver).to receive(:action)

      # fire
      subject.execute
    end
  end
end