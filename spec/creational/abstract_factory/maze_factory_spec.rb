require 'spec_helper'

describe MazeFactory do

  subject do
    klass = Class.new
    klass.include MazeFactory
    klass.new
  end

  it 'should respond to make_maze' do
    expect(subject.respond_to?(:make_maze)).to eq(true)
  end

  describe '#make_maze' do
    it 'should be abstract' do
      expect do
        subject.make_maze
      end.to raise_error(NotImplementedError)
    end
  end

  it 'should respond to make_room' do
    expect(subject.respond_to?(:make_room)).to eq(true)
  end

  describe '#make_room' do
    it 'should be abstract' do
      expect do
        subject.make_room(1)
      end.to raise_error(NotImplementedError)
    end
  end

  it 'should respond to make_wall' do
    expect(subject.respond_to?(:make_wall)).to eq(true)
  end

  describe '#make_wall' do
    it 'should be abstract' do
      expect do
        subject.make_wall
      end.to raise_error(NotImplementedError)
    end
  end

  it 'should respond to make_door' do
    expect(subject.respond_to?(:make_door)).to eq(true)
  end

  describe '#make_door' do
    it 'should be abstract' do
      room1 = double('room1')
      room2 = double('room2')
      expect do
        subject.make_door(room1, room2)
      end.to raise_error(NotImplementedError)
    end
  end
end