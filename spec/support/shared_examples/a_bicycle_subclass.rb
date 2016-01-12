RSpec.shared_examples 'a bicycle subclass' do
  it { expect(bicycle).to respond_to(:post_initialize) }
  it { expect(bicycle).to respond_to(:local_spares) }
  it { expect(bicycle).to respond_to(:default_tire_size) }
end
