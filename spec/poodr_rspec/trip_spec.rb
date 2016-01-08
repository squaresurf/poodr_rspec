require 'spec_helper'

describe PoodrRspec::Trip do
  let(:preparer) { double(:prepare_trip) }
  let(:trip) { PoodrRspec::Trip.new }

  describe '#prepare_trip' do
    before { expect(preparer).to receive(:prepare_trip).with(trip) }
    it { trip.prepare([preparer]) }
  end
end
