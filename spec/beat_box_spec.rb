require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  it 'is an instance of beat box' do
    bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end

  
end