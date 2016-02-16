require 'spec_helper'

describe FactoryMethod::MyCreator do
  describe '#create' do
    context 'when product_id is 2' do
      let(:product_id) { 2 }
      it 'creates my product' do
        # fire
        result = subject.create product_id

        expect(result).to be_a(FactoryMethod::MyProduct)
      end
    end

    context 'when product_id is 1' do
      let(:product_id) { 1 }

      it 'creates your product' do
        expect(subject.create(product_id)).to be_a(FactoryMethod::YourProduct)
      end
    end

    context 'when product_id is 3' do
      let(:product_id) { 3 }

      it 'creates third product' do
        expect(subject.create(product_id)).to be_a(FactoryMethod::ThirdProduct)
      end
    end
  end
end