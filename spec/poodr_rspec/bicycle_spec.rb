require 'spec_helper'
require 'support/shared_examples/a_bicycle_interface'

describe PoodrRspec::Bicycle do
  let(:bicycle) { PoodrRspec::Bicycle.new(tire_size: 0) }
  it_should_behave_like 'a bicycle interface'

  describe '#default_tire_size' do
    it do
      expect { bicycle.default_tire_size }.to raise_error(NotImplementedError)
    end
  end
end
