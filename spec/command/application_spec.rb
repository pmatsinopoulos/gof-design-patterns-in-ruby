require 'spec_helper'

describe Application do
  describe '#add' do
    it 'adds a document to the list of documents' do
      document = Document.new

      # fire
      subject.add(document)

      expect(subject.documents).to include(document)
    end
  end
end