require 'spec_helper'
require 'support/shared_examples/a_bicycle_interface'

describe PoodrRspec::Bicycle do
  let(:bicycle) { PoodrRspec::Bicycle.new(tire_size: 0) }
  it_should_behave_like 'a bicycle interface'
end
