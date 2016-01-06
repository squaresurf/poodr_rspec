require 'test_helper'

module PoodrRspec
  class WheelTest < MiniTest::Unit::TestCase
    def test_calculate_diameter
      wheel = Wheel.new(26, 1.5)

      assert_in_delta(29, wheel.diameter, 0.01)
    end
  end
end
