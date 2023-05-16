require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  it 'is an instance of beat box' do
    bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end

  it 'has a list' do
    bb = BeatBox.new

    expect(bb.list).to be_instance_of(LinkedList)
  end

  it 'has a head' do
    bb = BeatBox.new

    expect(bb.list.head).to eq nil
  end

  it 'has append method' do
    bb = BeatBox.new
    expect(bb.list.head).to eq nil
    bb.append("deep doo ditt")
    expect(bb.list.append("deep doo ditt")).to eq("deep doo ditt")
  end

  it 'can access head data' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
  end

  it 'has a count method' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")
    expect(bb.count).to eq(6)
  end

  it 'has a play method' do
    bb = BeatBox.new
    bb.append("woo hoo shu woo hoo shu")
    bb.play
  end
end