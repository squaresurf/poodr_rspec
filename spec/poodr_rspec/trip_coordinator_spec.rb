require 'spec_helper'
require 'support/shared_examples/a_preparer_interface'

describe PoodrRspec::TripCoordinator do
  let(:trip_coordinator) { PoodrRspec::TripCoordinator.new }
  it_should_behave_like 'a preparer interface' do
    let(:preparer) { trip_coordinator }
  end
end
