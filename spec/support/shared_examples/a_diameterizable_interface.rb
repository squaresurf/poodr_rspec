RSpec.shared_examples 'a diameterizable interface' do
  it { expect(diameterizable).to respond_to(:width) }
end
