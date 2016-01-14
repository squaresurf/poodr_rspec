require 'test_helper'
require 'support/modules/bicycle_interface_test'
require 'support/modules/bicycle_subclass_test'

module PoodrRspec
  class StubbedBike < Bicycle
    def default_tire_size
      0
    end

    def local_spares
      { saddle: 'painful' }
    end
  end

  class StubbedBikeTest < MiniTest::Test
    include BicycleInterfaceTest
    include BicycleSubclassTest

    def setup
      @object = StubbedBike.new
    end
  end

  class BicycleTest < MiniTest::Test
    include BicycleInterfaceTest

    def setup
      @bike = @object = Bicycle.new(tire_size: 0)
      @stubbed_bike = StubbedBike.new
    end

    def test_forces_subclasses_to_implement_default_tire_size
      assert_raises(NotImplementedError) { @bike.default_tire_size }
    end

    def test_includes_local_spares_in_spares
      assert_equal(
        { tire_size: 0, chain: '10-speed', saddle: 'painful' },
        @stubbed_bike.spares
      )
    end

    def test_local_spares_is_able_to_be_merged
      assert_equal({}, @bike.local_spares)
    end
  end
end
