require 'test_helper'
require 'support/modules/preparer_interface_test'

module PoodrRspec
  class TripCoordinatorTest < MiniTest::Test
    include PreparerInterfaceTest

    def setup
      @trip_coordinator = @object = TripCoordinator.new
    end

    # other tests which rely on @trip_coordinator
  end
end
