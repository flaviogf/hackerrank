# frozen_string_literal: true

RSpec.describe BillDivision do
  describe '.execute' do
    context 'when bill=[3, 10, 2, 9] k=1, b=12' do
      subject(:result) { described_class.execute(bill, k, b) }
      let(:bill) { [3, 10, 2, 9] }
      let(:k) { 1 }
      let(:b) { 12 }
      let(:expected_result) { '5' }

      it { is_expected.to eq(expected_result) }
    end

    context 'when bill=[3, 10, 2, 9], k=1, b=7' do
      subject(:result) { described_class.execute(bill, k, b) }
      let(:bill) { [3, 10, 2, 9] }
      let(:k) { 1 }
      let(:b) { 7 }
      let(:expected_result) { 'Bon Appetit' }

      it { is_expected.to eq(expected_result) }
    end
  end
end
