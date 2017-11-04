require 'order'

describe Order do
  subject(:subject) { described_class.new }

  let(:items) do  [
                    {name: 'Chicken', price: 5, amount: 1 },
                    {name: 'Burger', price: 4, amount: 1 }
                  ]
  end

  describe '#total' do
    it 'calculates totals from prices' do
      expect(subject.total(items)).to eq(9)
    end
  end

  describe '#check_total' do
    it 'checks against previous total' do
      expect(subject.check_total(items, subject.total(items)))
        .to eq(subject.total(items))
    end
  end
end
