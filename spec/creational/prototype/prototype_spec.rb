require 'spec_helper'

describe Prototype do
  let(:prototype_object) { Object.new }

  subject do
    klass = Class.new
    klass.include Prototype
    klass.new(prototype_object)
  end

  # To demonstrate the Prototype pattern, we decide to specify the #klone method. The #clone method is already
  # part of the public methods of every object in Ruby
  #
  it 'should respond to klone' do
    expect(subject).to respond_to(:klone)
  end

  describe '#klone' do
    it 'should raise an error' do
      expect do
        subject.klone
      end.to raise_error(NotImplementedError)
    end
  end
end