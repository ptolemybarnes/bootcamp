require_relative './my_map'

# OBJECTIVES - DAY 03
#
# - Be able to install the rspec gem
# - Be able to read and run an rspec test
# - Understand 'monkeypatching'
# - Understand 'self'
# - Be able to write a method that takes and yields to a block

RSpec.describe '#my_map' do
  it 'returns an array of the same length as the input' do
    array_length = 3
    input = Array.new(array_length)

    result = input.my_map {|element| element }

    expect(result.length).to eq array_length
  end

  it 'transforms the element using the block' do
    input = [1, 2, 3]

    result = input.my_map do |element|
      element * 2
    end

    expect(result).to eq [2, 4, 6]
  end
end
