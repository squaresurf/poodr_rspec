require 'test_helper'
require 'support/modules/bicycle_interface_test'

module PoodrRspec
  class RoadBikeTest < MiniTest::Test
    include BicycleInterfaceTest

    def setup
      @bike = @object = RoadBike.new(tire_size: 0)
    end
  end
end
