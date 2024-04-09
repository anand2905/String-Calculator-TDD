# frozen_string_literal: true

# string_calculator.rb
require 'debug'

class StringCalculator
  def self.add(numbers)
    raise ArgumentError, 'Input cannot be nil' if numbers.nil?

    delimiter, numbers = extract_delimiter(numbers)
    parsed_numbers = extract_numbers(numbers, delimiter)
    handle_negative_numbers(parsed_numbers)

    parsed_numbers.sum
  end

  def self.extract_delimiter(numbers)
    if numbers.start_with?('//')
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..]
      [delimiter, numbers]
    else
      [',', numbers]
    end
  end

  def self.extract_numbers(numbers, delimiter)
    numbers.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i).reject(&:zero?)
  end

  def self.handle_negative_numbers(numbers)
    negative_numbers = numbers.select(&:negative?)
    return unless negative_numbers.any?

    raise ArgumentError, "Negative numbers not allowed: #{negative_numbers.join(', ')}"
  end
end
