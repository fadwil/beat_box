require './lib/linked_list'
require './lib/node'

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
   
    expect(list.append("doop")).to eq("doop")
    expect(list.head).to be_instance_of(Node)
    expect(list.head.next_node).to eq nil
  end

  
end
