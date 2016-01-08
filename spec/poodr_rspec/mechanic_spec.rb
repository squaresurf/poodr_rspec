require 'spec_helper'
require 'support/shared_examples/a_preparer_interface'

describe PoodrRspec::Mechanic do
  let(:mechanic) { PoodrRspec::Mechanic.new }
  it_should_behave_like 'a preparer interface' do
    let(:preparer) { mechanic }
  end
end
