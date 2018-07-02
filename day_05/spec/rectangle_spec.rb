require './lib/rectangle'

# represents a rectangle with an area and circumference
describe Rectangle do

  it 'has an area' do
    rectangle = Rectangle.new(4, 4)

    expect(rectangle.area).to eq 16
  end

  it 'has a circumference'

end
