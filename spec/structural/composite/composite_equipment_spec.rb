require 'spec_helper'

describe CompositeEquipment do
  it 'calculates correctly the power, net_price and discount_price' do
    chassis      = Chassis.new name: 'chassis_1'
    floppy_disks = []
    floppy_disks.push FloppyDisk.new name: 'floppy_1', power: 10, net_price: Money.new(1000), discount_price: Money.new(500)
    floppy_disks.push FloppyDisk.new name: 'floppy_2', power: 20, net_price: Money.new(2000), discount_price: Money.new(1000)

    chassis2      = Chassis.new name: 'chassis_2'
    floppy_disks.push FloppyDisk.new name: 'floppy_2', power: 40, net_price: Money.new(4000), discount_price: Money.new(3000)
    chassis2.add(floppy_disks.last)

    floppy_disks.first(2).each {|fd| chassis.add(fd)}
    chassis.add(chassis2)

    expect(chassis.power).to          eq(floppy_disks.reduce(0) {|result, item| result + item.power})
    expect(chassis.net_price).to      eq(floppy_disks.reduce(Money.new(0)) {|result, item| result + item.net_price})
    expect(chassis.discount_price).to eq(floppy_disks.reduce(Money.new(0)) {|result, item| result + item.discount_price})
  end
end