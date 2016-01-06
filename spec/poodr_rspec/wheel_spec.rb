require 'spec_helper'

describe PoodrRspec::Wheel do
  subject(:wheel) { PoodrRspec::Wheel.new(26, 1.5) }

  describe '#diameter' do
    it { expect(wheel.diameter).to be_within(0.01).of(29) }
  end
end
