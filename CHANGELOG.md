# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added
- Bicycle class hierarchy to show how to test inheritence.
- Bicycle interface tests to test liskov substitution principle.
- Bicycle Subclass tests.
- Bicycle Superclass enforcement tests.
- Test Concrete Subclass Behavior
- Test Abstract Superclass Behavior

### Fixed
- Bug with Bicycle#initialize as it did not use the default\_\* methods for initialization.

## [0.6.0]
### Added
- Diameterizable Interface Tests

### Changed
- Renamed Wheel#diameter -> Wheel#width so that I could follow the progression of logic for fixing tests that pass when they shouldn't.

## [0.5.0]
### Added
- Pry gem to a development group for debugging purposes.
- Shared role test examples.

### Changed
- Tests to extend MiniTest::Test since MiniTest::Unit::TestCase is deprecated.
- Moved SimpleCov start to the .simplecov file so we could ignore test/spec files.

## [0.4.0] - 2015-01-07
### Added
- Proving Command Messages Examples

## [0.3.0] - 2015-01-07
### Changed
- Wheel is converted to a test double in order to inject depenedcies as roles.

## [0.2.0] - 2016-01-06
### Changed
- Gear to recieve a wheel object rather than initialize it within the class.

## [0.1.0] - 2016-01-06
### Added
- Gear Class, MiniTest, and RSpec.
- Wheel Class, MiniTest, and RSpec.

### Changed
- Travis to use the .ruby-version file.
- Use ruby 2.3.0.

## [0.0.1] - 2016-01-06
### Added
- Rubocop config in order to not require class comments.
- SimpleCov for local test coverage.
- Coveralls to allow public visibility of test coverage.

### Changed
- Gemfile.lock committed in order to manage specific versions.

[Unreleased]: https://github.com/squaresurf/poodr_rspec/compare/v0.6.0...HEAD
[0.6.0]: https://github.com/squaresurf/poodr_rspec/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/squaresurf/poodr_rspec/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/squaresurf/poodr_rspec/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/squaresurf/poodr_rspec/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/squaresurf/poodr_rspec/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/squaresurf/poodr_rspec/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/squaresurf/poodr_rspec/compare/v0.0.0...v0.0.1
