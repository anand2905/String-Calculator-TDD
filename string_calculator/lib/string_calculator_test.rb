# frozen_string_literal: true

# string_calculator_spec.rb
require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add('5')).to eq(5)
    end

    it 'returns the sum for two numbers' do
      expect(StringCalculator.add('1,5')).to eq(6)
    end

    context 'when input contains negative numbers' do
      it 'raises an ArgumentError' do
        expect { StringCalculator.add('1,-2,3') }.to raise_error(ArgumentError, 'Negative numbers not allowed: -2')
      end
    end

    context 'when input contains any amount of numbers' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('1,2,3,4,5,6,7,8')).to eq(36)
      end
    end
  end
end
