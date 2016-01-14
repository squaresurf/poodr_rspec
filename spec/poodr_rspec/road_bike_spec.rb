require 'spec_helper'
require 'support/shared_examples/a_bicycle_interface'
require 'support/shared_examples/a_bicycle_subclass'

describe PoodrRspec::RoadBike do
  let(:color) { 'red' }
  let(:road_bike) { PoodrRspec::RoadBike.new(tape_color: color) }
  let(:bicycle) { road_bike }
  it_should_behave_like 'a bicycle interface'
  it_should_behave_like 'a bicycle subclass'
  it { expect(road_bike.local_spares[:tape_color]).to eq(color) }
end
