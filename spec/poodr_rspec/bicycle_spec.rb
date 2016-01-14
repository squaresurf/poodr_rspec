require 'spec_helper'
require 'support/shared_examples/a_bicycle_interface'
require 'support/shared_examples/a_bicycle_subclass'

module PoodrRspec
  class StubbedBike < Bicycle
    def default_tire_size
      0
    end

    def local_spares
      { saddle: 'painful' }
    end
  end
end

describe PoodrRspec::Bicycle do
  let(:bicycle) { PoodrRspec::Bicycle.new(tire_size: 0) }
  let(:stubbed_bicycle) { PoodrRspec::StubbedBike.new }

  describe PoodrRspec::StubbedBike do
    let(:bicycle) { stubbed_bicycle }
    it_should_behave_like 'a bicycle interface'
    it_should_behave_like 'a bicycle subclass'
  end

  it_should_behave_like 'a bicycle interface'

  describe '#default_tire_size' do
    it do
      expect { bicycle.default_tire_size }.to raise_error(NotImplementedError)
    end
  end

  describe '#local_spares' do
    context 'with superclass' do
      it { expect(bicycle.local_spares).to eq({}) }
      it { expect(bicycle.spares).to eq(tire_size: 0, chain: '10-speed') }
    end

    context 'with stubbed subclass' do
      it { expect(stubbed_bicycle.local_spares).to eq(saddle: 'painful') }
      it do
        expect(stubbed_bicycle.spares).to(
          eq(tire_size: 0, chain: '10-speed', saddle: 'painful')
        )
      end
    end
  end
end
