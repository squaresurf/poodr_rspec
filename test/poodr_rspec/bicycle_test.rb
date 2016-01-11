require 'test_helper'
require 'support/modules/bicycle_interface_test'

module PoodrRspec
  class BicycleTest < MiniTest::Test
    include BicycleInterfaceTest

    def setup
      @bike = @object = Bicycle.new(tire_size: 0)
    end
  end
end
