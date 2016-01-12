require 'test_helper'
require 'support/modules/bicycle_interface_test'
require 'support/modules/bicycle_subclass_test'

module PoodrRspec
  class RoadBikeTest < MiniTest::Test
    include BicycleInterfaceTest
    include BicycleSubclassTest

    def setup
      @bike = @object = RoadBike.new(tire_size: 0)
    end
  end
end
