require 'spec_helper'

describe RulePrototype do
  let(:rule) {
    Rule.new(SecureRandom.hex)
  }

  subject do
    RulePrototype.new(rule)
  end

  it 'should be a prototype' do
    expect(subject).to be_a(Prototype)
  end

  describe '#klone' do
    it 'should create a Rule' do
      expect(subject.klone).to be_a(Rule)
    end

    it 'rule created should be equal to the rule prototype was initialized with' do
      # fire
      result = subject.klone

      expect(result.eql?(rule)).to eq(true)
    end
  end
end