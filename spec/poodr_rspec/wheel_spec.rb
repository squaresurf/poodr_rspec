require 'spec_helper'
require 'support/shared_examples/a_diameterizable_interface'

describe PoodrRspec::Wheel do
  subject(:wheel) { PoodrRspec::Wheel.new(26, 1.5) }

  describe '#diameter' do
    it_should_behave_like 'a diameterizable interface' do
      let(:diameterizable) { wheel }
    end
    it { expect(wheel.width).to be_within(0.01).of(29) }
  end
end
