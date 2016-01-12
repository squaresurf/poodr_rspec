require 'spec_helper'
require 'support/shared_examples/a_bicycle_interface'
require 'support/shared_examples/a_bicycle_subclass'

describe PoodrRspec::RoadBike do
  let(:road_bike) { PoodrRspec::RoadBike.new(tire_size: 0) }
  let(:bicycle) { road_bike }
  it_should_behave_like 'a bicycle interface'
  it_should_behave_like 'a bicycle subclass'
end
