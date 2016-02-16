require 'spec_helper'

describe EnchantedMazeFactory do
  describe '#make_maze' do
    it 'should return an enchanted maze' do
      expect(subject.make_maze).to be_a(EnchantedMaze)
    end
  end

  describe '#make_wall' do
    it 'should return an enchanted wall' do
      expect(subject.make_wall).to be_a(EnchantedWall)
    end
  end

  describe '#make_room' do
    it 'should return an enchanted room' do
      room_index = 2
      result = subject.make_room(room_index)
      expect(result).to be_a(EnchantedRoom)
      expect(result.room_index).to eq(room_index)
    end
  end

  describe '#make_door' do
    it 'should return an enchanted door' do
      room1 = EnchantedRoom.new(1)
      room2 = EnchantedRoom.new(2)
      expect(subject.make_door(room1, room2)).to be_a(EnchantedDoor)
    end
  end
end
