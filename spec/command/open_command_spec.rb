require 'spec_helper'
require 'securerandom'

describe OpenCommand do
  let(:application) {
    Application.new
  }
  subject do
    OpenCommand.new(application)
  end

  describe '#execute' do
    it 'asks user for the name of the document' do
      expect(subject).to receive(:ask_user)

      # fire
      subject.execute
    end

    it 'does not add anything to the documents of the application if name given is nil' do
      allow(subject).to receive(:ask_user).and_return(nil)
      original_size = application.documents.size

      # fire
      subject.execute

      expect(application.documents.size).to eq(original_size)
    end

    it 'does not add anything to the documents of the application if name given is empty' do
      allow(subject).to receive(:ask_user).and_return('')
      original_size = application.documents.size

      # fire
      subject.execute

      expect(application.documents.size).to eq(original_size)
    end

    it 'adds one document to the list of application documents if name given is not blank' do
      name = SecureRandom.hex

      allow(subject).to receive(:ask_user).and_return(name)
      original_size = application.documents.size

      # fire
      subject.execute

      expect(application.documents.size).to eq(original_size + 1)
    end

    it 'asks the document to open if the name given is not blank' do
      name = SecureRandom.hex

      allow(subject).to receive(:ask_user).and_return(name)
      expect_any_instance_of(Document).to receive(:open)

      # fire
      subject.execute
    end
  end
end