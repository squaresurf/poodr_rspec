require 'spec_helper'

describe PoodrRspec::Gear do
  let(:observer) { double(changed: true) }
  subject(:gear) do
    PoodrRspec::Gear.new(
      chainring: 52,
      cog: 11,
      observer: observer,
      wheel: double(diameter: 10)
    )
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
