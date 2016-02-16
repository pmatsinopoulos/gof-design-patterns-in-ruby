require 'spec_helper'
require 'securerandom'

describe PasteCommand do
  let(:name) {
    SecureRandom.hex
  }

  let(:document) {
    Document.new(name)
  }

  subject do
    PasteCommand.new(document)
  end

  describe '#execute' do
    it 'calls paste on the document attached' do
      expect(document).to receive(:paste)

      # fire
      subject.execute
    end
  end
end
