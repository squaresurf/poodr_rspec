require 'spec_helper'

describe PoodrRspec::Gear do
  subject(:gear) do
    PoodrRspec::Gear.new(
      chainring: 52,
      cog: 11,
      wheel: PoodrRspec::Wheel.new(26, 1.5)
    )
  end

  describe '#gear_inches' do
    it { expect(gear.gear_inches).to be_within(0.01).of(137.1) }
  end
end
