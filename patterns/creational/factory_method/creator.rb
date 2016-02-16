module FactoryMethod
  module Creator
    def create(product_id)
      return FactoryMethod::MyProduct.new   if product_id == 1
      return FactoryMethod::YourProduct.new if product_id == 2
      0
    end
  end
end