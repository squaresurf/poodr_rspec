require 'test_helper'
require 'support/modules/bicycle_interface_test'

module PoodrRspec
  class BicycleTest < MiniTest::Test
    include BicycleInterfaceTest

    def setup
      @bike = @object = Bicycle.new(tire_size: 0)
    end

    def test_forces_subclasses_to_implement_default_tire_size
      assert_raises(NotImplementedError) { @bike.default_tire_size }
    end
  end
end
