# String Calculator

## Getting Started

A simple Ruby string calculator with support for handling multiple numbers, new lines between numbers, and different delimiters.

### Prerequisites

To run the Rails application, you will need to have the following software installed:

#### Ruby

Version 3.1.0

##### GoRails Installation Guides

- [macOS](https://gorails.com/setup/osx) (installation via [rbenv](https://github.com/rbenv/rbenv))
- [Windows](https://gorails.com/setup/windows)
- [Ubuntu](https://gorails.com/setup/ubuntu)

#### Bundler

[Bundler](https://bundler.io/) is a tool for managing Ruby dependencies.

Install by running:

```
gem install bundler
```
```
bundle install
```


##### Usage
To use the String Calculator, simply call the add method with a string of comma-separated numbers:

```
StringCalculator.add("1,2,3") # Returns 6
```

##### Supported Input Formats
1. An empty string: "" - Output: 0
2. A single number: "1" - Output: 1
3. Multiple comma-separated numbers: "1,5" - Output: 6

### Handling New Lines Between Numbers
The String Calculator also supports new lines between numbers:
```
StringCalculator.add("1\n2,3") # Returns 6
```

### Custom Delimiters
You can specify a custom delimiter by including it at the beginning of the string, preceded by //. For example:
```
StringCalculator.add("-1,2,-3") # Throws: ArgumentError - "Negative numbers not allowed: -1, -3"
```

### Handling Negative Numbers
Calling add with a negative number will raise an exception:
```
StringCalculator.add("//;\n1;2") # Returns 3
```

### Tese Cases
If you want to run test cases using `rspec` [Rspec Gem](/https://github.com/rspec/) :
```
rspec string_calculator_test.rb      
```

### Getting Started
To get started with the String Calculator, simply clone this repository and include the string_calculator.rb file in your project.
