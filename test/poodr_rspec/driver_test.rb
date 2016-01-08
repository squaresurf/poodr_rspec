require 'test_helper'
require 'support/modules/preparer_interface_test'

module PoodrRspec
  class DriverTest < MiniTest::Test
    include PreparerInterfaceTest

    def setup
      @driver = @object = Driver.new
    end

    # other tests which rely on @driver
  end
end
