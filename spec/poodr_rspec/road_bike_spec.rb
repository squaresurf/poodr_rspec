require 'spec_helper'
require 'support/shared_examples/a_bicycle_interface'

describe PoodrRspec::RoadBike do
  let(:road_bike) { PoodrRspec::RoadBike.new(tire_size: 0) }
  it_should_behave_like 'a bicycle interface' do
    let(:bicycle) { road_bike }
  end
end
