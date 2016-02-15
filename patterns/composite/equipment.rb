class Equipment

  def initialize(name: nil, power: nil, net_price: nil, discount_price: nil)
    self.name           = name
    self.power          = power
    self.net_price      = net_price
    self.discount_price = discount_price
  end

  attr_accessor :discount_price,
                :name,
                :net_price,
                :power
end
