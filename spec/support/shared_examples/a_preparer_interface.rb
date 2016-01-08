RSpec.shared_examples 'a preparer interface' do
  it { expect(preparer).to respond_to(:prepare_trip) }
end
