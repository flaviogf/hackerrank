# frozen_string_literal: true

module RubyEnumerablesAnyAllNoneFind
  class << self
    def func_any(hash)
      hash.any? { |key, _| key.is_a?(Integer) }
    end

    def func_all(hash)
      hash.all? { |_, value| value.is_a?(Integer) && value > 10 }
    end

    def func_none(hash)
      hash.none? { |_, value| value.nil? }
    end

    def func_find(hash)
      hash.find do |key, value|
        (key.is_a?(Integer) && value.is_a?(Integer) && value < 20) ||
          (key.is_a?(String) && value.is_a?(String) && value.start_with?('a'))
      end
    end
  end
end
