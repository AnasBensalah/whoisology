require 'spec_helper'

describe Whoisology do

  it 'has a version number' do
    expect(Whoisology::VERSION).not_to be nil
  end

  it 'allows checking for credits' do
    expect(Whoisology::Api.new.credits).to be_a_kind_of Hash
  end

end
