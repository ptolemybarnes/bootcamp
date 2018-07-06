require './my_inject'

RSpec.describe 'my_inject' do
  it 'addition of numbers' do
    input = [1, 2, 3]

    result = input.my_inject {|sum, i| sum + i }

    expect(result).to eq 1 + 2 + 3
  end

  it 'concatenation of strings' do
    input = ['first', 'second', 'third']

    result = input.my_inject {|sentence, word| sentence + ', ' + word }
    p
    expect(result).to eq 'first, second, third'
  end

  it 'with object' do
    characters = "hello".chars

    result = characters.my_inject(Hash.new(0)) do |obj, c|
      obj[c] += 1
      obj
    end

    expect(result).to eq({
      'h' => 1,
      'e' => 1,
      'l' => 2,
      'o' => 1
    })
  end

  it 'with block shorthand' do
    input = [1, 2, 3]

    result = input.my_inject(&:+)

    expect(result).to eq 1 + 2 + 3
  end

  it 'with symbol shorthand' do
    input = [1, 2, 3]

    result = input.my_inject(:+)

    expect(result).to eq 1 + 2 + 3
  end
end
