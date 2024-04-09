# string_calculator_spec.rb
require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end
    
    it "returns the number itself for a single number" do
      expect(StringCalculator.add("5")).to eq(5)
    end
    
    it "returns the sum for two numbers" do
      expect(StringCalculator.add("1,5")).to eq()
    end
  end
end
