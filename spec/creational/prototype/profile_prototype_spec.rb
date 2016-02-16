require 'spec_helper'

describe ProfilePrototype do
  let(:profile) {
    Profile.new(SecureRandom.hex)
  }

  subject do
    ProfilePrototype.new(profile)
  end

  it 'should be a prototype' do
    expect(subject).to be_a(Prototype)
  end

  describe '#klone' do
    it 'should create a Profile' do
      expect(subject.klone).to be_a(Profile)
    end

    it 'profile created should be equal to the profile prototype was initialized with' do
      # fire
      result = subject.klone

      expect(result.eql?(profile)).to eq(true)
    end
  end
end