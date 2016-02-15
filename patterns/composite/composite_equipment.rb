require 'equipment'

class CompositeEquipment < Equipment
  def add(equipment)
    equipments.push(equipment)
    self
  end

  def remove(equipment)
    equipments.delete_if {|e|  e == equipment}
    self
  end

  def equipments
    @equipments ||= []
  end

  def power
    equipments.reduce(0) {|result, item| result + item.power}
  end

  def net_price
    equipments.reduce(Money.new(0)) {|result, item| result + item.net_price}
  end

  def discount_price
    equipments.reduce(Money.new(0)) {|result, item| result + item.discount_price}
  end

end

