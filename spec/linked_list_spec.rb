require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it 'is an instance of linked list' do
    list = LinkedList.new 

    expect(list).to be_instance_of(LinkedList)
  end

  it 'has a head' do
    list = LinkedList.new

    expect(list.head).to eq nil
  end

  it 'has append method' do
    list = LinkedList.new 
    node = Node.new("doop")
    
    expect(list.append("doop")).to eq("doop")
  end

  it 'has a next node' do
end
