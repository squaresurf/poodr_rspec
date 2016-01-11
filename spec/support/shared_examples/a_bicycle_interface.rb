RSpec.shared_examples 'a bicycle interface' do
  it { expect(bicycle).to respond_to(:default_tire_size) }
  it { expect(bicycle).to respond_to(:default_chain) }
  it { expect(bicycle).to respond_to(:chain) }
  it { expect(bicycle).to respond_to(:size) }
  it { expect(bicycle).to respond_to(:tire_size) }
  it { expect(bicycle).to respond_to(:spares) }
end
