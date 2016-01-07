require 'spec_helper'

describe PoodrRspec::Gear do
  subject(:gear) do
    PoodrRspec::Gear.new(
      chainring: 52,
      cog: 11,
      wheel: instance_double('DiameterDouble', diameter: 10)
    )
  end

  describe '#gear_inches' do
    it { expect(gear.gear_inches).to be_within(0.01).of(47.27) }
  end
end
