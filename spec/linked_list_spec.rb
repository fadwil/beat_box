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
    
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it 'has insert method' do
    list = LinkedList.new
    list.append("plop")
    expect(list.to_string).to eq("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
    expect(list.insert(1, "woo")).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu") 
  end

  it 'has a find method' do
    list = LinkedList.new
    list.prepend("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end
  
end

    
    
    

    

  
