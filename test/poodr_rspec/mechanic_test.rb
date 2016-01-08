require 'test_helper'
require 'support/modules/preparer_interface_test'

module PoodrRspec
  class MechanicTest < MiniTest::Test
    include PreparerInterfaceTest

    def setup
      @mechanic = @object = Mechanic.new
    end

    # other tests which rely on @mechanic
  end
end
