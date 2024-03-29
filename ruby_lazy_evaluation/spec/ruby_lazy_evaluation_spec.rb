# frozen_string_literal: true

RSpec.describe RubyLazyEvaluation do
  describe '.execute' do
    context 'when enter 1' do
      subject do
        described_class.execute(1)
      end

      it { is_expected.to eq([2]) }
    end

    context 'when enter 5' do
      subject do
        described_class.execute(5)
      end

      it { is_expected.to eq([2, 3, 5, 7, 11]) }
    end
  end

  describe 'Integer#prime?' do
    context 'when check if 1 is a prime number' do
      subject do
        1.prime?
      end

      it { is_expected.to be false }
    end

    context 'when check if 2 is a prime number' do
      subject do
        2.prime?
      end

      it { is_expected.to be true }
    end

    context 'when check if 5 is a prime number' do
      subject do
        5.prime?
      end

      it { is_expected.to be true }
    end
  end

  describe 'Integer#palindromic?' do
    context 'when check if 1 is a palindromic number' do
      subject do
        1.palindromic?
      end

      it { is_expected.to be true }
    end

    context 'when check if 10 is a palindromic number' do
      subject do
        10.palindromic?
      end

      it { is_expected.to be false }
    end
  end

  describe 'Integer#palindromic_prime?' do
    context 'when check if 1 is a palindromic prime number' do
      subject do
        1.palindromic_prime?
      end

      it { is_expected.to be false }
    end

    context 'when check if 2 is a palindromic prime number' do
      subject do
        2.palindromic_prime?
      end

      it { is_expected.to be true }
    end

    context 'when check if 100 is a palindromic prime number' do
      subject do
        100.palindromic_prime?
      end

      it { is_expected.to be false }
    end

    context 'when check if 101 is a palindromic prime number' do
      subject do
        101.palindromic_prime?
      end

      it { is_expected.to be true }
    end
  end
end
