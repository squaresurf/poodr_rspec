require 'spec_helper'
require 'support/shared_examples/a_preparer_interface'

describe PoodrRspec::Driver do
  let(:driver) { PoodrRspec::Driver.new }
  it_should_behave_like 'a preparer interface' do
    let(:preparer) { driver }
  end
end
