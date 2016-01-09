require 'test_helper'
require 'support/modules/diameterizable_interface_test'

module PoodrRspec
  class DiameterDouble
    def width
      10
    end
  end

  # Prove the test double honors the interface this test expects
  class DiameterDoubleTest < MiniTest::Test
    include DiameterizableInterfaceTest

    def setup
      @object = DiameterDouble.new
    end
  end

  class GearTest < MiniTest::Test
    def setup
      @observer = MiniTest::Mock.new
      @gear = Gear.new(
        chainring: 52,
        cog: 11,
        observer: @observer,
        wheel: DiameterDouble.new
      )
    end

    def test_calculate_gear_inches
      assert_in_delta(47.27, @gear.gear_inches, 0.01)
    end

    def test_notifies_observers_when_cogs_change
      @observer.expect(:changed, true, [52, 27])
      @gear.set_cog(27)
      @observer.verify
    end

    def test_notifies_observers_when_chainrings_change
      @observer.expect(:changed, true, [42, 11])
      @gear.set_chainring(42)
      @observer.verify
    end
  end
end
