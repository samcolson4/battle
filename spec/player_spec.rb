require 'player'

describe Player do
  it 'returns its name' do
    expect(subject.say_name).to eq subject.name
  end
end