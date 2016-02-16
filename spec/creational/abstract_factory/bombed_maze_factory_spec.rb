require 'spec_helper'

describe BombedMazeFactory do
  describe '#make_maze' do
    it 'should return a bombed maze' do
      expect(subject.make_maze).to be_a(BombedMaze)
    end
  end

  describe '#make_wall' do
    it 'should return a bombed wall' do
      expect(subject.make_wall).to be_a(BombedWall)
    end
  end

  describe '#make_room' do
    it 'should return a room with a bomb' do
      room_index = 2
      result = subject.make_room(room_index)
      expect(result).to be_a(BombedRoom)
      expect(result.room_index).to eq(room_index)
    end
  end

  describe '#make_door' do
    it 'should return a bombed door' do
      room1 = BombedRoom.new(1)
      room2 = BombedRoom.new(2)
      expect(subject.make_door(room1, room2)).to be_a(BombedDoor)
    end
  end
end