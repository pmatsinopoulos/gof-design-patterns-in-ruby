require 'spec_helper'

describe MacroCommand do
  let(:command) {
    Command.new
  }

  describe '#add' do
    it 'increases the number of commands in collection' do
      original_size = subject.send(:commands).size

      # fire
      subject.add command

      expect(subject.send(:commands).size).to eq(original_size + 1)
    end

    it 'can chain the additions to the collection' do
      command = Command.new
      command2 = Command.new

      # fire
      subject.add(command).add(command2)

      expect(subject.send(:commands).size).to eq(2)
    end
  end

  describe '#remove' do
    it 'decreases the number of commands in collection' do
      # setup
      #   lets add some commands
      3.times { subject.add(Command.new) }
      #   let's get access to 2nd command that we will ask to remove
      command = subject.send(:commands)[1]

      original_size = subject.send(:commands).size

      # fire
      subject.remove command

      expect(subject.send(:commands).size).to eq(original_size - 1 )
    end

    it 'can chain the removal of commands from the collection' do
      command, command2 = Command.new, Command.new

      subject.add(command)
      subject.add(command2)

      original_size = subject.send(:commands).size

      # fire
      subject.remove(command).remove(command2)

      expect(subject.send(:commands).size).to eq(original_size - 2)
    end
  end

  describe '#execute' do
    it 'calls the execute on all the commands in the collection' do
      3.times { subject.add(Command.new) }
      subject.send(:commands).each { |c| expect(c).to receive(:execute) }

      # fire
      subject.execute
    end
  end
end