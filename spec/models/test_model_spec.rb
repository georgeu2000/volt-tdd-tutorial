require 'spec_helper'

describe TestModel do
  specify '#foo' do
    expect( subject.foo ).to be true
  end
end