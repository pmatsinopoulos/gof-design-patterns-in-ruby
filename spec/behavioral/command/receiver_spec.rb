require 'spec_helper'

describe Receiver do
  it 'when included it attaches an abstract action method' do
    klass = Class.new
    klass.include Receiver
    expect(klass.new.respond_to?(:action)).to eq(true)
  end
end