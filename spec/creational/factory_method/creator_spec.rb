require 'spec_helper'

describe FactoryMethod::Creator do
  subject do
    klass = Class.new
    klass.include FactoryMethod::Creator
    klass.new
  end
  describe '#create' do
    context 'when product id 1' do
      let(:product_id) { 1 }
      it 'creates my product' do
        expect(subject.create(product_id)).to be_a(FactoryMethod::MyProduct)
      end
    end

    context 'when product id 2' do
      let(:product_id) { 2 }
      it 'creates your product' do
        expect(subject.create(product_id)).to be_a(FactoryMethod::YourProduct)
      end
    end
  end
end