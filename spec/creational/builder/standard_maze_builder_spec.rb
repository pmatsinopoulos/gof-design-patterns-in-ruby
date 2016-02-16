require 'spec_helper'

describe StandardMazeBuilder do
  it 'should be a maze builder' do
    expect(subject).to be_a(MazeBuilder)
  end

  describe '#build_maze' do
    it 'should build a standard maze' do
      expect(subject.build_maze).to be_a(StandardMaze)
    end
  end

  describe '#build_room' do
    it 'should build a standard room with correct room index' do
      room_index = 1
      result = subject.build_room(room_index)
      expect(result).to be_a(StandardRoom)
      expect(result.room_index).to eq(room_index)
    end
  end

  describe '#build_door' do
    it 'should build a standard door between the correct rooms' do
      room_from = subject.build_room(1)
      room_to   = subject.build_room(2)

      # fire
      result = subject.build_door(1, 2)

      # checks
      expect(result).to be_a(StandardDoor)
      expect(result.room_from).to eq(room_from)
      expect(result.room_to).to eq(room_to)
    end
  end

  describe '#get_maze' do
    it 'should return the standard maze built with correct rooms and doors' do
      # setup
      subject.build_maze
      room_from = subject.build_room(1)
      room_to   = subject.build_room(2)
      subject.build_door(1, 2)

      # fire
      result = subject.get_maze

      expect(result).to be_a(StandardMaze)
      # check the rooms
      expect(result.number_of_rooms).to eq(2)
      expect(result.rooms).to include(room_from)
      expect(result.rooms).to include(room_to)

      # check the doors
      expect(result.number_of_doors).to eq(1)
      expect(result.doors[0].room_from).to eq(room_from)
      expect(result.doors[0].room_to).to eq(room_to)
    end
  end
end