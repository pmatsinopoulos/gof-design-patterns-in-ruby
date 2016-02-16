require 'spec_helper'
require 'securerandom'

describe Document do
  let(:name) {
    SecureRandom.hex
  }
  subject do
    Document.new(name)
  end
  it 'responds to open' do
    expect(subject).to respond_to(:open)
  end
end