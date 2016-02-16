require 'spec_helper'

describe Command do
  it 'responds to execute' do
    expect(subject).to respond_to(:execute)
  end

  it 'raises an error since execute is abstract' do
    expect do
      subject.execute
    end.to raise_error(NotImplementedError)
  end
end