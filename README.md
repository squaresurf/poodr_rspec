[![Build Status](https://travis-ci.org/squaresurf/poodr_rspec.svg?branch=master)](https://travis-ci.org/squaresurf/poodr_rspec)
[![Coverage Status](https://coveralls.io/repos/squaresurf/poodr_rspec/badge.svg?branch=master&service=github)](https://coveralls.io/github/squaresurf/poodr_rspec?branch=master)

# POODR RSpec

This is an attempt to adapt the MiniTest examples and concepts from the testing chapter of [POODR] to RSpec. [POODR] is an incredible book that will help anyone writing [OOP](https://en.wikipedia.org/wiki/Object-oriented_programming) code no matter what language.

## Disclaimer

This repo has no affiliation with [POODR], [Sandy Metz](http://www.sandimetz.com/), or the Publisher. The library classes and MiniTest suite are mostly copied from the book. There are a few updates made, for example we  use `MiniTest::Test` instead of `MiniTest::Unit::TestCase`. The RSpec suite was written from scratch and not from the book. It is an attempt to convert the principles found from the MiniTest suite to RSpec.

## Installation

* Clone this repo.
* Change directory into the local repo.
* `bundle`

## Usage

You can run both the MiniTest and RSpec test suites by running `bundle exec rake`. You can also run just the MiniTest or RSpec suites with rake via:

* `bundle exec rake spec`
* `bundle exec rake test`

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/squaresurf/poodr_rspec).

## License

The code is available as open source under the terms of the [MIT License](LICENSE.txt).

[POODR]: http://www.poodr.com/
