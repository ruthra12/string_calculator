# String Calculator – TDD Assessment

This is a Ruby implementation of the String Calculator kata, built using **Test-Driven Development (TDD)** as part of the Incubyte assessment.

---

##  Requirements Covered

- Return 0 for an empty string
- Support one or more comma-separated numbers
- Support newline (`\n`) as a delimiter
- Support custom single-character delimiters using `//;\n1;2`
- Support custom multi-character delimiters using `//[***]\n1***2***3`
- Support multiple delimiters using `//[*][%]\n1*2%3`
- Support multiple multi-character delimiters like `//[***][#][%]\n1***2#3%4`
- Raise an exception for negative numbers and list all negatives
- Ignore numbers greater than 1000

---

##  Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/ruthra12/string_calculator.git
cd string_calculator
```

### 2. Install Dependencies

```bash
bundle install
```

### 3. Run Tests

```bash
bundle exec rspec
```

All tests are located in spec/string_calculator_spec.rb.
