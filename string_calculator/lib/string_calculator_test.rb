# frozen_string_literal: true

# string_calculator_spec.rb
require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when input is an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number' do
        expect(StringCalculator.add('5')).to eq(5)
      end
    end

    context 'when input is multiple comma-separated numbers' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('1,2,3')).to eq(6)
      end
    end

    context 'when input contains negative numbers' do
      it 'raises an ArgumentError' do
        expect { StringCalculator.add('1,-2,3') }.to raise_error(ArgumentError, 'Negative numbers not allowed: -2')
      end
    end

    context 'when input contains multiple negative numbers' do
      it 'raises an ArgumentError' do
        expect do
          StringCalculator.add('1,-2,3,-4')
        end.to raise_error(ArgumentError, /Negative numbers not allowed: -2, -4/)
      end
    end

    context 'when input contains any amount of numbers' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('1,2,3,4,5,6,7,8')).to eq(36)
      end
    end

    context 'when input uses newline characters as delimiters' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context 'when input contains a custom delimiter' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end
  end
end
