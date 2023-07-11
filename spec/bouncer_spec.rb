require 'bouncer'

describe 'Bouncer' do
  subject { Bouncer.new }

  it 'rejects xx from entering the venue' do
    # b = Bouncer.new
    bounced = subject.bounce('xx')
    expect(bounced).to be_truthy
  end
end