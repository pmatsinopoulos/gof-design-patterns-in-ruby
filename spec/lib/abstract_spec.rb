require 'spec_helper'

describe Abstract do
  subject do
    Class.new
  end

  before do
    subject.include(Abstract)
  end

  it 'defines abstract method' do
    subject.abstract :foo, :bar

    # fire
    expect(subject.new.respond_to?(:foo)).to eq(true)
    expect(subject.new.respond_to?(:bar)).to eq(true)
  end

  it 'makes sure the abstract method raises an error if called' do
    subject.abstract :foo

    expect do
      subject.new.foo
    end.to raise_error(NotImplementedError)
  end
end