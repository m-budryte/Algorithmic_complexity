require 'methods'
describe '#find_duplicates' do
  it 'returns no duplicates when there no duplicates' do
    array = ['hi', 'I', 'am', 'masha']
    expect(array.find_duplicates).to eq('no duplicates')
  end

  it 'returns a duplicate when there is a pair' do
    array = ['hi', 'hi', 'I', 'am', 'masha']
    expect(array.find_duplicates).to eq(['hi'])
  end

  it 'returns a duplicate when there is more than one pair' do
    array = ['hi', 'hi', 'I', 'am', 'am', 'masha', 'masha']
    expect(array.find_duplicates).to eq(['hi', 'am', 'masha'])
  end
end

describe '#reverse_array' do
  it 'returns the same array if there is only one member' do
    array = [1]
    expect(array.reverse_array).to eq([1])
  end

  it 'returns reversed array - 2 members' do
    array = [1,2]
    expect(array.reverse_array).to eq([2,1])
  end
end

describe '#reverse_array' do
  it 'returns the same array if there is only one member' do
    array = [1]
    expect(array.reverse_array).to eq([1])
  end

  it 'returns reversed array - 2 members' do
    array = [1,2]
    expect(array.reverse_array).to eq([2,1])
  end

  it 'returns reversed array - 3 members' do
    array = [1,2,3]
    expect(array.reverse_array).to eq([3,2,1])
  end
end

describe '#reverse_array' do
  it 'returns the same array if there is only one member' do
    array = [1]
    expect(array.reverse_array).to eq([1])
  end

  it 'returns reversed array - 2 members' do
    array = [1,2]
    expect(array.reverse_array).to eq([2,1])
  end

  it 'returns reversed array - 3 members' do
    array = [1,2,3]
    expect(array.reverse_array).to eq([3,2,1])
  end
end

describe '#fibonacci' do
  it '1 -> 0' do
    expect(1.fibonacci).to eq([0])
  end

  it '2 - 0 1' do
    expect(2.fibonacci).to eq([0,1])
  end

  it '3 - 0 1 1' do
      expect(3.fibonacci).to eq([0,1,1])
  end

  it '6 - 0 1 1 2 3 5' do
      expect(6.fibonacci).to eq([0,1,1,2,3,5])
  end
end
