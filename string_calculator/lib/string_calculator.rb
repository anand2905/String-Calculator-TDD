# frozen_string_literal: true

# string_calculator.rb

class StringCalculator
  def self.add(numbers)
    raise ArgumentError, 'Input cannot be nil' if numbers.nil?

    parsed_numbers = extract_numbers(numbers)
    if parsed_numbers.any?(&:negative?)
      raise ArgumentError, "Negative numbers not allowed: #{parsed_numbers.select(&:negative?).join(', ')}"
    end

    parsed_numbers.sum
  end

  def self.extract_numbers(numbers)
    numbers.split(',').map(&:to_i)
  end
end
