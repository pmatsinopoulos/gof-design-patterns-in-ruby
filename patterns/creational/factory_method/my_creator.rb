module FactoryMethod
  class MyCreator
    include FactoryMethod::Creator

    def create(product_id)
      return FactoryMethod::MyProduct.new    if product_id == 2
      return FactoryMethod::YourProduct.new  if product_id == 1
      return FactoryMethod::ThirdProduct.new if product_id == 3
      super
    end
  end
end