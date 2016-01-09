require 'spec_helper'
require 'support/shared_examples/a_diameterizable_interface'

describe PoodrRspec::Gear do
  let(:observer) { double(changed: true) }
  let(:wheel_double) { double(width: 10) }
  subject(:gear) do
    PoodrRspec::Gear.new(
      chainring: 52,
      cog: 11,
      observer: observer,
      wheel: wheel_double
    )
  end

  describe 'wheel double passes interface' do
    it_should_behave_like 'a diameterizable interface' do
      let(:diameterizable) { wheel_double }
    end
  end

  describe '#gear_inches' do
    it { expect(gear.gear_inches).to be_within(0.01).of(47.27) }
  end

  describe '#set_cog' do
    it 'should call observer' do
      expect(observer).to receive(:changed).with(52, 27)
      gear.set_cog(27)
    end
  end

  describe '#set_chainring' do
    it 'should call observer' do
      expect(observer).to receive(:changed).with(42, 11)
      gear.set_chainring(42)
    end
  end
end
