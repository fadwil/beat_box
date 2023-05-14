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
  
  it 'has a count method' do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end

  it 'can append multiple nodes' do
  list = LinkedList.new
  expect(list.append("doop")).to eq("doop")
  expect(list).to eq(list)
  expect(list.head).to be_instance_of(Node)
  expect(list.head.next_node).to eq nil

  expect(list.append("deep")).to eq("deep")
  expect(list.head.next_node).to be_instance_of(Node)
  end

  it 'is a string' do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.to_string).to eq("doop")
  end
    

  it 'has a prepend method' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.prepend).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
  end
end

    
    
    

    

  
